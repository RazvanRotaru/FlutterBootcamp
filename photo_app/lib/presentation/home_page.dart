import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:photo_app/actions/index.dart';
import 'package:photo_app/container/error_container.dart';
import 'package:photo_app/container/loading_container.dart';
import 'package:photo_app/container/photos_container.dart';
import 'package:photo_app/models/index.dart';
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
      store.dispatch(const GetPhotosAction());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // TODO(RazvanRotaru): Add searchbar and dispatch ChangeCategoryAction
        title: const Text('Photos'),
      ),
      body: PhotosContainer(
        builder: (BuildContext context, List<Photo> photos) {
          return LoadingContainer(
            builder: (BuildContext context, bool isLoading) {
              if (isLoading && photos.isEmpty) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              return ErrorContainer(
                builder: (BuildContext context, String? errMessage) {
                  if (errMessage != null) {
                    return ErrorWidget(errMessage);
                  }

                  return GridView.builder(
                    controller: scrollController,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1,
                      // childAspectRatio: 0.69,
                      crossAxisSpacing: 5,
                      mainAxisSpacing: 5,
                    ),
                    itemCount: photos.length,
                    itemBuilder: (BuildContext context, int index) {
                      final Photo photo = photos[index];

                      return GestureDetector(
                        child: GridTile(
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Image.network(photo.urls.regular),
                          ),
                          footer: GridTileBar(
                            backgroundColor: Colors.black45,
                            title: Text(photo.description ?? ''),
                          ),
                        ),
                      );
                    },
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}
