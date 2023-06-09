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
    apiKey: 'AIzaSyAKgkmzP4AN-BsvTfc-0Dt8J5ucYO80_FE',
    appId: '1:538934406078:web:0a912a6d251689f389a7ef',
    messagingSenderId: '538934406078',
    projectId: 'habit-tracker-ecf3b',
    authDomain: 'habit-tracker-ecf3b.firebaseapp.com',
    storageBucket: 'habit-tracker-ecf3b.appspot.com',
    measurementId: 'G-ZZRCDW11RT',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAu87DhQA-mpo136rOSu0M79tEjE061yys',
    appId: '1:538934406078:android:ac5d5fda0395a02389a7ef',
    messagingSenderId: '538934406078',
    projectId: 'habit-tracker-ecf3b',
    storageBucket: 'habit-tracker-ecf3b.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD0_2BeIS7Zfw-cRLElBmH5StASDducTlw',
    appId: '1:538934406078:ios:bc3d113f660c84ab89a7ef',
    messagingSenderId: '538934406078',
    projectId: 'habit-tracker-ecf3b',
    storageBucket: 'habit-tracker-ecf3b.appspot.com',
    iosBundleId: 'com.example.habitTracker',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyD0_2BeIS7Zfw-cRLElBmH5StASDducTlw',
    appId: '1:538934406078:ios:39b028beefb69bad89a7ef',
    messagingSenderId: '538934406078',
    projectId: 'habit-tracker-ecf3b',
    storageBucket: 'habit-tracker-ecf3b.appspot.com',
    iosBundleId: 'com.example.habitTracker.RunnerTests',
  );
}
