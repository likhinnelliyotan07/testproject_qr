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
        return macos;
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
    apiKey: 'AIzaSyAje2Xs83pawM-fWHIJq1ptaY1QpC53mHI',
    appId: '1:452002639530:web:7f05e163fc7f6906c16ad3',
    messagingSenderId: '452002639530',
    projectId: 'test-project-qr-c40e5',
    authDomain: 'test-project-qr-c40e5.firebaseapp.com',
    storageBucket: 'test-project-qr-c40e5.firebasestorage.app',
    measurementId: 'G-SFJHE6TX7L',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCtn6gJahgq1_UV6i9y6BWZwzqMC1UsBvI',
    appId: '1:452002639530:android:d48714de2a4725aac16ad3',
    messagingSenderId: '452002639530',
    projectId: 'test-project-qr-c40e5',
    storageBucket: 'test-project-qr-c40e5.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDc6JtOPyYsQ6tcRjCPb5qUZVXYJYTqueU',
    appId: '1:452002639530:ios:55f383fa9de5017dc16ad3',
    messagingSenderId: '452002639530',
    projectId: 'test-project-qr-c40e5',
    storageBucket: 'test-project-qr-c40e5.firebasestorage.app',
    iosBundleId: 'com.example.testProjectQr',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDc6JtOPyYsQ6tcRjCPb5qUZVXYJYTqueU',
    appId: '1:452002639530:ios:55f383fa9de5017dc16ad3',
    messagingSenderId: '452002639530',
    projectId: 'test-project-qr-c40e5',
    storageBucket: 'test-project-qr-c40e5.firebasestorage.app',
    iosBundleId: 'com.example.testProjectQr',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAje2Xs83pawM-fWHIJq1ptaY1QpC53mHI',
    appId: '1:452002639530:web:9eeb32033e905317c16ad3',
    messagingSenderId: '452002639530',
    projectId: 'test-project-qr-c40e5',
    authDomain: 'test-project-qr-c40e5.firebaseapp.com',
    storageBucket: 'test-project-qr-c40e5.firebasestorage.app',
    measurementId: 'G-0CH8GDEMM1',
  );
}
