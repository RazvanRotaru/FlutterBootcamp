import 'package:movie_db/models/movie.dart';

class GetMoviesAction {}

class GetMoviesResponse {}

class GetMoviesSuccessful extends GetMoviesResponse {
  GetMoviesSuccessful(this.movies);

  final List<Movie> movies;

  @override
  String toString() {
    return 'GetMoviesSuccessful{movies: ${movies.map((Movie elm) => elm.title)}}';
  }
}

class GetMoviesError extends GetMoviesResponse {
  GetMoviesError(this.err);

  final Object err;

  @override
  String toString() {
    return 'GetMoviesError{err: $err}';
  }
}
