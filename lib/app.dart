import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/core/configs/theme/app_theme.dart';
import 'package:movie_app/domain/auth/repositories/auth.dart';
import 'package:movie_app/presentation/splash/bloc/splash_cubit.dart';
import 'package:movie_app/presentation/splash/page/splash_screen.dart';
import 'package:movie_app/service_locator.dart';


class MovieApp extends StatelessWidget {
  const MovieApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent
      )
    );
    return BlocProvider(
      create: (context) => SplashCubit(authRepository: sl<AuthRepository>())..appStarted(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppTheme.appTheme,
        home: const Scaffold(
          body: SplashScreen(),
        ),
      ),
    );
  }
}