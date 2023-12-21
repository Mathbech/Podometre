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
    apiKey: 'AIzaSyCwq6EBxW6Ty5fZYodByr0GRMxq0QfPu4A',
    appId: '1:223048221892:web:a909433422cf75611af591',
    messagingSenderId: '223048221892',
    projectId: 'scorebad-b5050',
    authDomain: 'scorebad-b5050.firebaseapp.com',
    storageBucket: 'scorebad-b5050.appspot.com',
    measurementId: 'G-T60DL8Y6Q9',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBIZ84NdiL5OLy3OAmkbe9bDWddRcxVkbE',
    appId: '1:223048221892:android:1c97ab8a501378861af591',
    messagingSenderId: '223048221892',
    projectId: 'scorebad-b5050',
    storageBucket: 'scorebad-b5050.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB0q7X86ygmTnGXKG90ILNH6hzrT9M6_qQ',
    appId: '1:223048221892:ios:ea8b1fdfda2bd9341af591',
    messagingSenderId: '223048221892',
    projectId: 'scorebad-b5050',
    storageBucket: 'scorebad-b5050.appspot.com',
    iosBundleId: 'com.example.btsApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyB0q7X86ygmTnGXKG90ILNH6hzrT9M6_qQ',
    appId: '1:223048221892:ios:7b32c9e7c63991471af591',
    messagingSenderId: '223048221892',
    projectId: 'scorebad-b5050',
    storageBucket: 'scorebad-b5050.appspot.com',
    iosBundleId: 'com.example.btsApp.RunnerTests',
  );
}