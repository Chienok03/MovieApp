import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:movie_app/domain/auth/repositories/auth.dart';

class AuthRepositoryImpl implements AuthRepository {
  final FirebaseAuth firebaseAuth;

  AuthRepositoryImpl(this.firebaseAuth);

  @override
  Future<Either> signIn(String email, String password) async {
    try {
      final userCredential = await firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
      return Right(userCredential.user);
    } on DioException catch (e) {
      return Left(e.toString());
    }
  }

  @override
  Future<Either> signUp(String email, String password) async {
    try {
      final userCredential = await firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: password);
      return Right(userCredential.user);
    } on DioException catch (e) {
      return Left(e.toString());
    }
  }

  @override
  Future<Either> logout() async {
    try {
      await firebaseAuth.signOut();
      return const Right(null);
    } on DioException catch (e) {
      return Left(e.toString());
    }
  }

  @override
  Future<bool> isLoggedIn() async {
    final currentUser = firebaseAuth.currentUser;
    return currentUser != null;
  }
}
