import 'package:flutter/material.dart';
import 'package:q30/Home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: ListViewWithContextMenu());
  }
}
