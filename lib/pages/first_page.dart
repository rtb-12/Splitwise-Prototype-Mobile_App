import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
            top: -MediaQuery.of(context).size.height * 0.65,
            left: -MediaQuery.of(context).size.width * 0.25,
            child: Container(
              width: MediaQuery.of(context).size.width * 1.5,
              height: MediaQuery.of(context).size.height * 1.5,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFF4CBB9B),
              ),
              child: Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height *
                        0.3), // Add some space at the top
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: 150,
                        height: 150,
                        child: Center(
                          child: Image.asset('assets/splash.png'),
                        ),
                      ),
                      Text(
                        'SPLITWISE',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height *
                    0.45), // Add some space at the top
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 250, // Set the width of the button
                    height: 55, // Set the height of the button
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            WidgetStateProperty.all<Color>(Color(0xFF666666)),
                        padding: WidgetStateProperty.all<EdgeInsets>(
                            EdgeInsets.all(15)),
                        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ),
                      child: Text(
                        'LOGIN',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                        ),
                      ),
                      onPressed: () {
                        // Navigate to Login Page
                      },
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: 250, // Set the width of the button
                    height: 55, // Set the height of the button
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            WidgetStateProperty.all<Color>(Color(0xFF5BC5A6)),
                        padding: WidgetStateProperty.all<EdgeInsets>(
                            EdgeInsets.all(15)),
                        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ),
                      child: Text(
                        'SIGN UP',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                        ),
                      ),
                      onPressed: () {
                        // Navigate to Login Page
                      },
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: 110, // Set the width of the button
                        height: 55, // Set the height of the button
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: WidgetStateProperty.all<Color>(
                                Color(0xFFF1EDED)),
                            padding: WidgetStateProperty.all<EdgeInsets>(
                                EdgeInsets.all(15)),
                            shape:
                                WidgetStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          ),
                          child: Image.asset('assets/google.png',
                              height: 40.0, // Set the height of the image
                              width: 40.0),
                          onPressed: () {
                            // Navigate to Login Page
                          },
                        ),
                      ),
                      SizedBox(
                          width: 20), // Add some spacing between the buttons
                      Container(
                        width: 110, // Set the width of the button
                        height: 55, // Set the height of the button
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: WidgetStateProperty.all<Color>(
                                Color(0xFF157DC3)),
                            padding: WidgetStateProperty.all<EdgeInsets>(
                                EdgeInsets.all(15)),
                            shape:
                                WidgetStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          ),
                          child: Image.asset('assets/facebook.png',
                              height: 40.0, // Set the height of the image
                              width: 40.0),
                          onPressed: () {
                            // Navigate to Login Page
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
