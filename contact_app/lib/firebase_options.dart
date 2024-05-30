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
    apiKey: 'AIzaSyCgChpPeCB2hrON7aa2J68zkUlXp8b4WCc',
    appId: '1:304727713976:web:5a94ca52a18895b8a0ec4d',
    messagingSenderId: '304727713976',
    projectId: 'contact-manager-app-01',
    authDomain: 'contact-manager-app-01.firebaseapp.com',
    storageBucket: 'contact-manager-app-01.appspot.com',
    measurementId: 'G-SB9QBDX9PZ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBywNaJ5oRORy3vo7_VafNgbul10fvUyvw',
    appId: '1:304727713976:android:680d0289a2758d8ea0ec4d',
    messagingSenderId: '304727713976',
    projectId: 'contact-manager-app-01',
    storageBucket: 'contact-manager-app-01.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDH7C70ZF9W8aOzR1Ik3rL8bUx8jq1cpQg',
    appId: '1:304727713976:ios:67390f2030634149a0ec4d',
    messagingSenderId: '304727713976',
    projectId: 'contact-manager-app-01',
    storageBucket: 'contact-manager-app-01.appspot.com',
    iosBundleId: 'com.example.contactApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDH7C70ZF9W8aOzR1Ik3rL8bUx8jq1cpQg',
    appId: '1:304727713976:ios:67390f2030634149a0ec4d',
    messagingSenderId: '304727713976',
    projectId: 'contact-manager-app-01',
    storageBucket: 'contact-manager-app-01.appspot.com',
    iosBundleId: 'com.example.contactApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCgChpPeCB2hrON7aa2J68zkUlXp8b4WCc',
    appId: '1:304727713976:web:1170ee0eb12c9357a0ec4d',
    messagingSenderId: '304727713976',
    projectId: 'contact-manager-app-01',
    authDomain: 'contact-manager-app-01.firebaseapp.com',
    storageBucket: 'contact-manager-app-01.appspot.com',
    measurementId: 'G-5HGBCNSWST',
  );
}
