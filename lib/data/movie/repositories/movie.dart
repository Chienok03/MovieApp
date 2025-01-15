import 'package:dartz/dartz.dart';
import 'package:movie_app/core/mapper/movie_mapper.dart';
import 'package:movie_app/data/movie/models/movie_model.dart';
import 'package:movie_app/data/movie/sources/movie_api_service.dart';
import 'package:movie_app/domain/movie/repositories/movie.dart';
import 'package:movie_app/service_locator.dart';

class MovieRepositoryImpl extends MovieRepository {
  @override
  Future<Either> getTrendingMovie() async {
    var returnedData = await sl<MovieApiService>().getTrendingMovie();
    return returnedData.fold((error) {
      return Left(error);
    }, (data) {
      var movies = List.from(data['content'])
          .map((item) => MovieMapper.toEntity(MovieModel.fromJson(item))).toList();
          return Right(movies);
    });
  }
}
