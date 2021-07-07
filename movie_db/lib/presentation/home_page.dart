import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:movie_db/actions/get_movies.dart';
import 'package:movie_db/actions/reload_movies.dart';
import 'package:movie_db/container/loading_container.dart';
import 'package:movie_db/container/movies_container.dart';
import 'package:movie_db/models/app_state.dart';
import 'package:movie_db/models/movie.dart';
import 'package:redux/redux.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollController scrollController = ScrollController();
  final double elementHeight = 300;

  @override
  void initState() {
    super.initState();
    scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    final Store<AppState> store = StoreProvider.of<AppState>(context);
    final bool isLoading = store.state.isLoading;
    final double dy = scrollController.position.maxScrollExtent - scrollController.offset;

    if (dy < 4 * elementHeight && !isLoading) {
      store.dispatch(GetMoviesAction());
    }
  }

  void _refresh() {
    final Store<AppState> store = StoreProvider.of<AppState>(context);
    if (!store.state.isLoading) {
      store.dispatch(ReloadMovies());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Movie Database'),
      ),
      floatingActionButton: LoadingContainer(
        builder: (BuildContext context, bool isLoading) {
          return FloatingActionButton(
            onPressed: _refresh,
            child: const Icon(Icons.refresh),
          );
        },
      ),
      body: MoviesContainer(
        builder: (BuildContext context, List<Movie> movies) {
          return LoadingContainer(
            builder: (BuildContext context, bool isLoading) {
              if (isLoading && movies.isEmpty) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              return GridView.builder(
                controller: scrollController,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.69,
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 5,
                ),
                itemCount: movies.length,
                itemBuilder: (BuildContext context, int index) {
                  final Movie movie = movies[index];

                  return SizedBox(
                      height: elementHeight,
                      child: GridTile(
                        child: Image.network(movie.mediumCoverImage),
                        footer: GridTileBar(
                          backgroundColor: Colors.black45,
                          title: Text(movie.title),
                        ),
                      ));
                },
              );
            },
          );
        },
      ),
    );
  }
}
