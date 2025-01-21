import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:movie_app/data/auth/models/user_model.dart';

class AuthRemoteSource {
  final FirebaseAuth _firebaseAuth;

  AuthRemoteSource(this._firebaseAuth);

  Future<Either> signin(String email, String password) async {
    try {
      final userCredential = await _firebaseAuth
          .signInWithEmailAndPassword(email: email, password: password);
          final userModel = UserModel.fromFirebaseUser(userCredential.user!);
      return Right(userModel);
    } on DioException catch (e) {
      return Left(e.toString());
    }
  }

  Future<Either> signup(String email, String password) async {
    try {
      final userCredential =
          await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      final userModel = UserModel.fromFirebaseUser(userCredential.user!);
      return Right(userModel);
    } on DioException catch (e) {
      return Left(e.toString());
    }
  }

  Future<Either> logout() async {
    try {
      await _firebaseAuth.signOut();
      return const Right(null);
    }on DioException catch (e) {
      return Left(e.toString());
    }
  }
}
