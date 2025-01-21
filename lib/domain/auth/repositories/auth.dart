import 'package:dartz/dartz.dart';

abstract class AuthRepository {
  Future<Either> signUp(String email, String password);
  Future<Either> signIn(String email, String password);
  Future<Either> logout();
  Future<bool> isLoggedIn();
}
