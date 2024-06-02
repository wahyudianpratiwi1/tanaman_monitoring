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
    apiKey: 'AIzaSyD6Y-2EA7qOKAoRsuibrbYEQHyCU5fbreo',
    appId: '1:226504125574:web:e2212600392d8e63aef507',
    messagingSenderId: '226504125574',
    projectId: 'tanaman-27701',
    authDomain: 'tanaman-27701.firebaseapp.com',
    databaseURL: 'https://tanaman-27701-default-rtdb.firebaseio.com',
    storageBucket: 'tanaman-27701.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCWIhcYsBnxThKRQYdHcAW_rBRcwrQ3utU',
    appId: '1:226504125574:android:c80dac10d07659aeaef507',
    messagingSenderId: '226504125574',
    projectId: 'tanaman-27701',
    databaseURL: 'https://tanaman-27701-default-rtdb.firebaseio.com',
    storageBucket: 'tanaman-27701.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyApPy7ZKW1j0pf_BPKYWlNZ1_gIGGS59zU',
    appId: '1:226504125574:ios:8128ef02a478c2deaef507',
    messagingSenderId: '226504125574',
    projectId: 'tanaman-27701',
    databaseURL: 'https://tanaman-27701-default-rtdb.firebaseio.com',
    storageBucket: 'tanaman-27701.appspot.com',
    iosBundleId: 'com.example.monitoringMobile',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyApPy7ZKW1j0pf_BPKYWlNZ1_gIGGS59zU',
    appId: '1:226504125574:ios:8128ef02a478c2deaef507',
    messagingSenderId: '226504125574',
    projectId: 'tanaman-27701',
    databaseURL: 'https://tanaman-27701-default-rtdb.firebaseio.com',
    storageBucket: 'tanaman-27701.appspot.com',
    iosBundleId: 'com.example.monitoringMobile',
  );
}