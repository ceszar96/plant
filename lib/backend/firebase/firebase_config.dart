import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDktRKZsRxZBzM26uzrghfAT6VymereDcg",
            authDomain: "bcplant-e1546.firebaseapp.com",
            projectId: "bcplant-e1546",
            storageBucket: "bcplant-e1546.appspot.com",
            messagingSenderId: "608817800761",
            appId: "1:608817800761:web:1de70b5884442178c34fe8"));
  } else {
    await Firebase.initializeApp();
  }
}
