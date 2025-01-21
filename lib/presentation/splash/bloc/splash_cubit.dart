import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movie_app/domain/auth/repositories/auth.dart';
import 'package:movie_app/presentation/splash/bloc/splash_state.dart';

class SplashCubit extends Cubit<SplashState> {
  final AuthRepository authRepository;
  SplashCubit({required this.authRepository}) : super(DisplaySplash());

  void appStarted() async {
    await Future.delayed(const Duration(seconds: 2));
    bool isLoggedIn = await authRepository.isLoggedIn();
    if (isLoggedIn) {
      emit(Authenticated());
    } else {
      emit(UnAuthenticated());
    }
  }
}
