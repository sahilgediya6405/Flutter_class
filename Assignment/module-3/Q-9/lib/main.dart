import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Color Selector',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ColorSelectorPage(),
    );
  }
}

class ColorSelectorPage extends StatefulWidget {
  @override
  _ColorSelectorPageState createState() => _ColorSelectorPageState();
}

class _ColorSelectorPageState extends State<ColorSelectorPage> {
  Color _selectedColor = Colors.white;

  void _ColorChange(Color color) {
    setState(() {
      _selectedColor = color;
    });
  }

  @override
  Widget build(BuildContext context) {
    int _getColorValue(Color color) {
      if (color == Colors.red) return 0;
      if (color == Colors.green) return 1;
      if (color == Colors.blue) return 2;
      return -1;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Select a Color'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            width: double.infinity,
            height: double.infinity,
            color: _selectedColor,
            child: Center(
              child: Text(
                'Color Display',
                style: TextStyle(color: Colors.black, fontSize: 24),
              ),
            ),
          ),
          Expanded(
            child: Column(
              children: <Widget>[
                ListTile(
                  title: Text('Red'),
                  leading: Radio(
                    value: 0,
                    groupValue: _getColorValue(_selectedColor),
                    onChanged: (int? value) {
                      if (value != null) {
                        _ColorChange(Colors.red);
                      }
                    },
                  ),
                ),
                ListTile(
                  title: Text('Green'),
                  leading: Radio(
                    value: 1,
                    groupValue: _getColorValue(_selectedColor),
                    onChanged: (int? value) {
                      if (value != null) {
                        _ColorChange(Colors.green);
                      }
                    },
                  ),
                ),
                ListTile(
                  title: Text('Blue'),
                  leading: Radio(
                    value: 2,
                    groupValue: _getColorValue(_selectedColor),
                    onChanged: (int? value) {
                      if (value != null) {
                        _ColorChange(Colors.blue);
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
