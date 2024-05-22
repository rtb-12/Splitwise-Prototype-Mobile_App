import 'package:flutter/material.dart';
import 'package:splitwise/pages/home_screen.dart';
import 'package:splitwise/pages/splash_screen.dart';
import 'package:splitwise/pages/first_page.dart';
import 'package:splitwise/pages/signup_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignUpPage(),
    ); // MaterialApp
  }
}
