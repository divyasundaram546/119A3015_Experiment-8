import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'realtime_db.dart';
import 'package:device_preview/device_preview.dart';
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // ensure initialisation
  FirebaseApp firebaseApp = await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyDGMkMSiltAkVLVJLF5pMklU8RB6DCVDD4",
          authDomain: "flutterproject-d90eb.firebaseapp.com",
          projectId: "flutterproject-d90eb",
          databaseURL:
              "https://flutterproject-d90eb-default-rtdb.asia-southeast1.firebasedatabase.app/",
          storageBucket: "flutterproject-d90eb.appspot.com",
          messagingSenderId: "44620671729",
          appId: "1:44620671729:web:da4ec610dddcb2e3b0d750"));
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => const MaterialApp(
        useInheritedMediaQuery: true,
        home: realtime_db(),
      ),
    )
  );
}
