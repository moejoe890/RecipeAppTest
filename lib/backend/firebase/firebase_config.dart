import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyBWAdj8E3BvgcoZgkmvUZNBJgqMU3Z4LgY",
            authDomain: "recipeapp3-a9b04.firebaseapp.com",
            projectId: "recipeapp3-a9b04",
            storageBucket: "recipeapp3-a9b04.firebasestorage.app",
            messagingSenderId: "371798050121",
            appId: "1:371798050121:web:6b2ff99b61ac9d19de8698",
            measurementId: "G-Q7ZGM2LKMM"));
  } else {
    await Firebase.initializeApp();
  }
}
