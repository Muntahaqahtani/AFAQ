import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCCJt-bvFqqMnseAPxrahIp59OIdEn4nXY",
            authDomain: "afaq-xyd5jj.firebaseapp.com",
            projectId: "afaq-xyd5jj",
            storageBucket: "afaq-xyd5jj.appspot.com",
            messagingSenderId: "96685359434",
            appId: "1:96685359434:web:c3e2ee67ed6d3c074741b3"));
  } else {
    await Firebase.initializeApp();
  }
}
