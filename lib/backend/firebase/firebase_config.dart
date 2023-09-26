import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyArBDT45KNOplTFkh7IRxzPwjzFHWr994E",
            authDomain: "appblogdas.firebaseapp.com",
            projectId: "appblogdas",
            storageBucket: "appblogdas.appspot.com",
            messagingSenderId: "783731909978",
            appId: "1:783731909978:web:1bd436d155f42d18463f63"));
  } else {
    await Firebase.initializeApp();
  }
}
