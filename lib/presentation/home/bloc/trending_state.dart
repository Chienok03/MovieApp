import 'package:movie_app/domain/movie/entities/movie.dart';

abstract class TrendingState {}

class TrendingMoviesLoading extends TrendingState {}

class TrendMoviesLoaded extends TrendingState {
  final List<MovieEntity> movies;

  TrendMoviesLoaded({required this.movies});
}

class FailureLoadTrendingMovies extends TrendingState {
  final String errorMessage;

  FailureLoadTrendingMovies({required this.errorMessage});
}
