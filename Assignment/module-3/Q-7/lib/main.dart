import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HideTextBox(),
  ));
}

class HideTextBox extends StatefulWidget {
  const HideTextBox({super.key});

  @override
  State<HideTextBox> createState() => _HideTextBoxState();
}

class _HideTextBoxState extends State<HideTextBox> {
  bool checked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Checkbox(
              value: checked,
              onChanged: (bool? value) {
                setState(() {
                  checked = value ?? false;
                });
              }),
          if (checked) Text("HELLO FLUTTER DEV...")
        ],
      ),
    ));
  }
}
