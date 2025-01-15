import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/domain/movie/usecase/get_trending_movie.dart';
import 'package:movie_app/presentation/home/bloc/trending_state.dart';
import 'package:movie_app/service_locator.dart';

class TrendingCubit extends Cubit<TrendingState> {
  TrendingCubit() : super(TrendingMoviesLoading());

  void getTrendingMovies() async {
    var returnedData = await sl<GetTrendingMovieUseCase>().call();
    returnedData.fold((error) {
      emit(FailureLoadTrendingMovies(errorMessage: error));
    }, (data) {
      emit(TrendMoviesLoaded(movies: data));
    });
  }
}
