import "package:flutter/material.dart";

class Screen2 extends StatelessWidget {
  String name;
  Screen2({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(name),
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(color: Colors.blue),
          child: Center(
            child: Text(name),
          ),
        ));
  }
}
