import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/presentation/home/bloc/trending_cubit.dart';
import 'package:movie_app/presentation/home/bloc/trending_state.dart';

class TrendingMovies extends StatelessWidget {
  const TrendingMovies({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TrendingCubit()..getTrendingMovies(),
      child: BlocBuilder<TrendingCubit, TrendingState>(
        builder: (context, state) {
          if (state is TrendingMoviesLoading) {
            return CircularProgressIndicator();
          }
          if (state is TrendMoviesLoaded) {}
          if (state is FailureLoadTrendingMovies) {
            return Text(state.errorMessage);
          }
          return Container();
        },
      ),
    );
  }
}
