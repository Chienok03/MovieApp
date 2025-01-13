// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';

import 'package:movie_app/data/auth/models/signup_req_params.dart';
import 'package:movie_app/data/auth/sources/auth_api_service.dart';
import 'package:movie_app/domain/auth/repositories/auth.dart';
import 'package:movie_app/service_locator.dart';

class AuthRepositoryImpl extends AuthRepository {
  Future<Either> signUp(SignupReqParams params) async {
    return await sl<AuthApiService>().signUp(params);
  }
}
