import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  await Firebase.initializeApp(
    name: "my-throwaway-project",
    options: const FirebaseOptions(
      apiKey: "AIzaSyBXOxFf_iXaer4tX-sE8eRrh77VftTKZI0",
      appId: "1:980810897373:android:b1a4bcd50cd76712868834",
      messagingSenderId: "980810897311",
      projectId: "my-throwaway-project",
    ),
  );

  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    crashApp();
    return const MaterialApp(
      home: Text('foo'),
    );
  }

  void crashApp() async {
    await null;
    // throws
    FirebaseFirestore.instance;
  }
}
