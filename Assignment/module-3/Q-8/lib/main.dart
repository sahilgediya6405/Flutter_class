import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            width: 300,
            height: 300,
            child: Stack(
              children: [
                Positioned(
                  left: 0,
                  top: 0,
                  child: Image.asset(
                    'assets/1.png',
                    width: 100,
                    height: 100,
                  ),
                ),
                Positioned(
                  right: 0,
                  top: 0,
                  child: Image.asset(
                    'assets/2.png',
                    width: 100,
                    height: 100,
                  ),
                ),
                Positioned(
                  left: 0,
                  bottom: 0,
                  child: Image.asset(
                    'assets/3.jpg',
                    width: 100,
                    height: 100,
                  ),
                ),
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: Image.asset(
                    'assets/4.jpg',
                    width: 100,
                    height: 100,
                  ),
                ),
                Center(
                  child: Container(
                    padding: EdgeInsets.all(8),
                    child: Text(
                      'Center Text',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
