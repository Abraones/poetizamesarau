import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDCzWIqZ3T1z0vnOkG8zCXbSQXrnyJl8vY",
            authDomain: "poetizame-sarau.firebaseapp.com",
            projectId: "poetizame-sarau",
            storageBucket: "poetizame-sarau.firebasestorage.app",
            messagingSenderId: "791026056113",
            appId: "1:791026056113:web:80e61d65b5bebf3d849b90"));
  } else {
    await Firebase.initializeApp();
  }
}
