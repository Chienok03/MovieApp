import 'package:dartz/dartz.dart';
import 'package:movie_app/domain/auth/repositories/auth.dart';

class SigninParams {
  final String email;
  final String password;

  SigninParams({required this.email, required this.password});
}

class SigninUsecase {
  final AuthRepository authRepository;

  SigninUsecase(this.authRepository);

  Future<Either> call(SigninParams signinParams) async {
    return authRepository.signIn(signinParams.email, signinParams.password);
  }
}
