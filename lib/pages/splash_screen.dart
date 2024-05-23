import 'package:flutter/material.dart';
import 'dart:async';
import 'package:splitwise/pages/first_page.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 5),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => FirstPage()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Align(
            alignment: Alignment(0, -0.3),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 150.0,
                  height: 150.0,
                  child: Center(
                    child: Image.asset('assets/splash.png'),
                  ),
                ),
                Center(
                  child: Text(
                    'SPLITWISE',
                    style: TextStyle(
                      color: Color(0xFF64C9AC),
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 32.0),
              child: Text(
                'Split bills the easy way',
                style: TextStyle(
                  color: Color(0xFF666666),
                  fontSize: 20.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
