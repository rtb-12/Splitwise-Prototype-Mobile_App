import 'package:flutter/material.dart';
import 'package:splitwise/pages/home_page.dart';
import 'package:splitwise/pages/splash_screen.dart';
import 'package:splitwise/pages/first_page.dart';
import 'package:splitwise/pages/signup_page.dart';
import 'package:splitwise/pages/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ); // MaterialApp
  }
}
