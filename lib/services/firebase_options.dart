// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
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
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyAbtxOAniFHRF-S9WEoQHUtNOJeHndYf2w',
    appId: '1:104142282281:web:5b40d3c6f7e4c272de4638',
    messagingSenderId: '104142282281',
    projectId: 'todo-76f0f',
    authDomain: 'todo-76f0f.firebaseapp.com',
    storageBucket: 'todo-76f0f.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBQ8e3cm9vO6Wc8yhqZ6E1CVJtvz-OUa_M',
    appId: '1:104142282281:android:e4429d1aa8fd4e47de4638',
    messagingSenderId: '104142282281',
    projectId: 'todo-76f0f',
    storageBucket: 'todo-76f0f.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBwGX8JeBWdrjkKi_cPggXumo68OeTO8zE',
    appId: '1:104142282281:ios:da3eae762615758dde4638',
    messagingSenderId: '104142282281',
    projectId: 'todo-76f0f',
    storageBucket: 'todo-76f0f.appspot.com',
    iosBundleId: 'com.example.todo',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBwGX8JeBWdrjkKi_cPggXumo68OeTO8zE',
    appId: '1:104142282281:ios:3c899bf17951744dde4638',
    messagingSenderId: '104142282281',
    projectId: 'todo-76f0f',
    storageBucket: 'todo-76f0f.appspot.com',
    iosBundleId: 'com.example.todo.RunnerTests',
  );
}
