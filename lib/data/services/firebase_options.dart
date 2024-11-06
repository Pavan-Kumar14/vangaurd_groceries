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
    apiKey: 'AIzaSyCrPjMIWq3BbxvHmmFYAPG4Z6AEPChEKvc',
    appId: '1:268763085486:web:7c97ed8f1ee50209360b3f',
    messagingSenderId: '268763085486',
    projectId: 'veer-93017',
    authDomain: 'veer-93017.firebaseapp.com',
    storageBucket: 'veer-93017.appspot.com',
    measurementId: 'G-49QQDLMSL3',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDPupYOk_Eh34qOrwhQ_Ca-6uNoo9fkgt4',
    appId: '1:268763085486:android:811e54d25b2c47db360b3f',
    messagingSenderId: '268763085486',
    projectId: 'veer-93017',
    storageBucket: 'veer-93017.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCVcH-GMWpdcSc0oe3OORgQfxkwQiQIGR8',
    appId: '1:268763085486:ios:ad54ccadf6cea68c360b3f',
    messagingSenderId: '268763085486',
    projectId: 'veer-93017',
    storageBucket: 'veer-93017.appspot.com',
    iosBundleId: 'com.vanguard.vangaurdGroceries',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCVcH-GMWpdcSc0oe3OORgQfxkwQiQIGR8',
    appId: '1:268763085486:ios:ad54ccadf6cea68c360b3f',
    messagingSenderId: '268763085486',
    projectId: 'veer-93017',
    storageBucket: 'veer-93017.appspot.com',
    iosBundleId: 'com.vanguard.vangaurdGroceries',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCrPjMIWq3BbxvHmmFYAPG4Z6AEPChEKvc',
    appId: '1:268763085486:web:0ab3da6411d0ee7f360b3f',
    messagingSenderId: '268763085486',
    projectId: 'veer-93017',
    authDomain: 'veer-93017.firebaseapp.com',
    storageBucket: 'veer-93017.appspot.com',
    measurementId: 'G-1ZPRNPXMS3',
  );
}
