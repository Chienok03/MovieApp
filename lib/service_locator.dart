import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';
import 'package:movie_app/core/network/dio_client.dart';
import 'package:movie_app/data/auth/repositories/auth_repository_impl.dart';
import 'package:movie_app/data/movie/repositories/movie.dart';
import 'package:movie_app/data/movie/sources/movie_api_service.dart';
import 'package:movie_app/domain/auth/repositories/auth.dart';
import 'package:movie_app/domain/movie/repositories/movie.dart';
import 'package:movie_app/domain/movie/usecase/get_trending_movie.dart';

final sl = GetIt.instance;

void setupServiceLocator() {
  sl.registerSingleton<DioClient>(DioClient());

//Service
  // sl.registerSingleton<AuthRemoteSource>(AuthRepositoryImpl());
  sl.registerSingleton<MovieApiService>(MovieApiServiceImpl());

  //Repositories
  sl.registerSingleton<AuthRepository>((AuthRepositoryImpl(FirebaseAuth.instance)));
  sl.registerSingleton<MovieRepository>(MovieRepositoryImpl());

//Usecase
  
  sl.registerSingleton<GetTrendingMovieUseCase>(GetTrendingMovieUseCase());

}
