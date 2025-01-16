// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        return windows;
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDTS9LJJd122p4QqMh1f0vQ7MW7FafIoi0',
    appId: '1:728190118803:web:6cd11de19b29f760009666',
    messagingSenderId: '728190118803',
    projectId: 'movieapp-26e96',
    authDomain: 'movieapp-26e96.firebaseapp.com',
    storageBucket: 'movieapp-26e96.firebasestorage.app',
    measurementId: 'G-3MY1GMMLWR',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB_1C30dPaS1G-ZJtWTt1ZrLI54TCxczrY',
    appId: '1:728190118803:android:da8a9d9305afe2f9009666',
    messagingSenderId: '728190118803',
    projectId: 'movieapp-26e96',
    storageBucket: 'movieapp-26e96.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCR1SqUHySX7O9-t-Hm7cqWjaGmFKh25kU',
    appId: '1:728190118803:ios:7201eaa28e39ad23009666',
    messagingSenderId: '728190118803',
    projectId: 'movieapp-26e96',
    storageBucket: 'movieapp-26e96.firebasestorage.app',
    iosBundleId: 'com.example.movieApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDTS9LJJd122p4QqMh1f0vQ7MW7FafIoi0',
    appId: '1:728190118803:web:6d3e7e7f90da5ca7009666',
    messagingSenderId: '728190118803',
    projectId: 'movieapp-26e96',
    authDomain: 'movieapp-26e96.firebaseapp.com',
    storageBucket: 'movieapp-26e96.firebasestorage.app',
    measurementId: 'G-WQP6SP3YPE',
  );
}
