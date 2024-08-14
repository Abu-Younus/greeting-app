import 'package:flutter/material.dart';

void main() {
  runApp(GreetingApp());
}

class GreetingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Greeting App'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Hello, World!',
                style: TextStyle(
                  color: Colors.red,  // Change text color to red
                  fontWeight: FontWeight.bold,  // Make text bold
                ),
              ),
              SizedBox(height: 10),
              Text('Welcome to Flutter!'),
              SizedBox(height: 20),
              Image.asset("assets/images/flutter.png", scale: 4,),
              SizedBox(height: 20),
              Builder(
                builder: (BuildContext context) {
                  return ElevatedButton(
                    onPressed: () {
                      final snackBar = SnackBar(content: Text('Button Pressed!'));
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,  // Change button color to green
                    ),
                    child: Text(
                      'Press Me',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
