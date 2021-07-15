import 'package:movie_db/actions/get_movies.dart';
import 'package:movie_db/data/movie_api.dart';
import 'package:movie_db/models/app_state.dart';
import 'package:movie_db/models/movie.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';

class MovieEpics {
  MovieEpics({required MovieApi api}) : _movieApi = api;

  final MovieApi _movieApi;

  Epic<AppState> get epics {
    return combineEpics<AppState>(<Epic<AppState>>[
        TypedEpic<AppState, GetMoviesAction>(_getMovies),
      ]);
  }

  Stream<GetMoviesResponse> _getMovies(Stream<GetMoviesAction> actions, EpicStore<AppState> store) {
    return actions
        .asyncMap((GetMoviesAction action) => _movieApi.getMovies(page: store.state.currentPage))
        .map<GetMoviesResponse>((List<Movie> movies) => GetMoviesSuccessful(movies))
        .onErrorReturnWith((Object error, StackTrace stackTrace) => GetMoviesError(error));
  }
}
