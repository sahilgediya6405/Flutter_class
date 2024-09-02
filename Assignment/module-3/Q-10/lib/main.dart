import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ColorChanger(),
    );
  }
}

class ColorChanger extends StatefulWidget {
  @override
  _ColorChangerState createState() => _ColorChangerState();
}

class _ColorChangerState extends State<ColorChanger> {
  double red = 0;
  double green = 0;
  double blue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromRGBO(
          red.round(),
          green.round(),
          blue.round(),
          1.0,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Slider(
                value: red,
                onChanged: (value) {
                  setState(() {
                    red = value;
                  });
                },
                min: 0,
                max: 255,
                label: 'Red: $red'),
            Slider(
                value: green,
                onChanged: (value) {
                  setState(() {
                    green = value;
                  });
                },
                min: 0,
                max: 255,
                label: 'Green: $green'),
            Slider(
                value: blue,
                onChanged: (value) {
                  setState(() {
                    blue = value;
                  });
                },
                min: 0,
                max: 255,
                label: 'Blue: $blue'),
          ],
        ),
      ),
    );
  }
}
