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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyDzbURyH6CtQbBuGir-Z06yNzI5E3olMiI',
    appId: '1:976635882050:web:e2658383464ebe3b1d1bdb',
    messagingSenderId: '976635882050',
    projectId: 'nuflix-d9cfe',
    authDomain: 'nuflix-d9cfe.firebaseapp.com',
    storageBucket: 'nuflix-d9cfe.appspot.com',
    measurementId: 'G-0TXD7KPMGS',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA2vlEzj-Es9jRvWZ24FPCY7aHpfAwt-68',
    appId: '1:976635882050:android:b06ee1f5442f76751d1bdb',
    messagingSenderId: '976635882050',
    projectId: 'nuflix-d9cfe',
    storageBucket: 'nuflix-d9cfe.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBsbaTdTs31PzXODK4n9O_vA4ejXyYOE84',
    appId: '1:976635882050:ios:1dcce2e029e3a22c1d1bdb',
    messagingSenderId: '976635882050',
    projectId: 'nuflix-d9cfe',
    storageBucket: 'nuflix-d9cfe.appspot.com',
    iosClientId:
        '976635882050-hpribhgp3r3noe3dfhe1c2r2smhikg98.apps.googleusercontent.com',
    iosBundleId: 'com.nugar.nuflix',
  );
}
