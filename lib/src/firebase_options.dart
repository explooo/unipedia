// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

// ...


/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
void main() async {
 
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform,);

}

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
    apiKey: 'AIzaSyBZyi1w9oTu-SVSdAqUNcIl-0k0YxLsvOU',
    appId: '1:27246773926:web:a72f179041e6fdfbce9667',
    messagingSenderId: '27246773926',
    projectId: 'unipedia-99019',
    authDomain: 'unipedia-99019.firebaseapp.com',
    storageBucket: 'unipedia-99019.appspot.com',
    measurementId: 'G-HDR6B823D6',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB7IeMYQaBZWwm6IJDzNo_geyAvQSgM9Dw',
    appId: '1:27246773926:android:f6a39780f75a37d3ce9667',
    messagingSenderId: '27246773926',
    projectId: 'unipedia-99019',
    storageBucket: 'unipedia-99019.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC5YOkEzieUkF2hZL5Qk8QyXcPftM7HkhA',
    appId: '1:27246773926:ios:319bbbda8e844812ce9667',
    messagingSenderId: '27246773926',
    projectId: 'unipedia-99019',
    storageBucket: 'unipedia-99019.appspot.com',
    iosBundleId: 'com.example.unipedia',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC5YOkEzieUkF2hZL5Qk8QyXcPftM7HkhA',
    appId: '1:27246773926:ios:799b38e32e785f58ce9667',
    messagingSenderId: '27246773926',
    projectId: 'unipedia-99019',
    storageBucket: 'unipedia-99019.appspot.com',
    iosBundleId: 'com.example.unipedia.RunnerTests',
  );
}