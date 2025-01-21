import 'package:dartz/dartz.dart';
import 'package:movie_app/domain/auth/repositories/auth.dart';

class SignupParams {
  final String email;
  final String password;

  SignupParams(this.email, this.password);
}

class SignupUsecase {
  final AuthRepository authRepository;

  SignupUsecase(this.authRepository);

  Future<Either> call(SignupParams signupParams) async {
    return authRepository.signUp(signupParams.email, signupParams.password);
  }
}
