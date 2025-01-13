import 'package:flutter/material.dart';
import 'package:movie_app/app.dart';
import 'package:movie_app/service_locator.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setupServiceLocator();
  runApp(const MovieApp());
}

