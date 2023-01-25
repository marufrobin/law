import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'authentication/signUpPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MaterialApp(
      title: 'Admin Panel English',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SignUpPageEnglish(),
    );
  }
}
