import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
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
                  top: MediaQuery.of(context).size.height * 0,
                ), // Add some space at the top
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: 45,
                        height: 45,
                        child: Center(
                          child: Image.asset('assets/splash.png'),
                        ),
                      ),
                      SizedBox(
                          width:
                              20), // Add some space between the logo and the text
                      Center(
                        child: Text(
                          'SPLITWISE',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              SizedBox
                  .shrink(), // This will take up the remaining space at the top
              Padding(
                padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).size.height *
                      0.55, // Adjust this value
                ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          print(
                              'SIGN UP tapped!'); // Replace this with your onTap function
                        },
                        child: Text(
                          'SIGN UP',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(width: 20),
                      GestureDetector(
                        onTap: () {
                          print(
                              'LOGIN tapped!'); // Replace this with your onTap function
                        },
                        child: Text(
                          'LOGIN',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22.0,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox
                  .shrink(), // This will take up the remaining space at the bottom
            ],
          ),
          Padding(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.15,
            ),
            child: Center(
              child: Container(
                width: 350, // Adjust the width of the box
                height: 425, // Adjust the height of the box
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                  // Adjust the border radius
                ),
                child: Padding(
                  padding: const EdgeInsets.all(
                      10.0), // Add some padding inside the box
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Name',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 22.0,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal:
                                    5.0), // Add some padding around the box
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors
                                    .grey[300], // Set the color of the box
                                borderRadius: BorderRadius.circular(
                                    5), // Add some border radius
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                  labelText: '',
                                  border: InputBorder
                                      .none, // Remove the default underline
                                  contentPadding: EdgeInsets.all(
                                      10), // Add some padding inside the TextField
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Email Address',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 22.0,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal:
                                    5.0), // Add some padding around the box
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors
                                    .grey[300], // Set the color of the box
                                borderRadius: BorderRadius.circular(
                                    5), // Add some border radius
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                  labelText: '',
                                  border: InputBorder
                                      .none, // Remove the default underline
                                  contentPadding: EdgeInsets.all(
                                      10), // Add some padding inside the TextField
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Password',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 22.0,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal:
                                    5.0), // Add some padding around the box
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors
                                    .grey[300], // Set the color of the box
                                borderRadius: BorderRadius.circular(
                                    5), // Add some border radius
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                  labelText: '',
                                  border: InputBorder
                                      .none, // Remove the default underline
                                  contentPadding: EdgeInsets.all(
                                      10), // Add some padding inside the TextField
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Phone Number',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 22.0,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal:
                                    5.0), // Add some padding around the box
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors
                                    .grey[300], // Set the color of the box
                                borderRadius: BorderRadius.circular(
                                    5), // Add some border radius
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                  labelText: '',
                                  border: InputBorder
                                      .none, // Remove the default underline
                                  contentPadding: EdgeInsets.all(
                                      10), // Add some padding inside the TextField
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(
                  bottom: 20.0), // Add some padding at the bottom
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 110, // Set the width of the button
                    height: 55, // Set the height of the button
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            WidgetStateProperty.all<Color>(Color(0xFFF1EDED)),
                        padding: WidgetStateProperty.all<EdgeInsets>(
                            EdgeInsets.all(15)),
                        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
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
                  SizedBox(width: 20), // Add some spacing between the buttons
                  Container(
                    width: 110, // Set the width of the button
                    height: 55, // Set the height of the button
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            WidgetStateProperty.all<Color>(Color(0xFF157DC3)),
                        padding: WidgetStateProperty.all<EdgeInsets>(
                            EdgeInsets.all(15)),
                        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
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
            ),
          ),
        ],
      ),
    );
  }
}
