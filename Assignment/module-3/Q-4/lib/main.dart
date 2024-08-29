import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Calcilation(),
  ));
}

class Calcilation extends StatefulWidget {
  const Calcilation({super.key});

  @override
  State<Calcilation> createState() => _CalcilationState();
}

class _CalcilationState extends State<Calcilation> {
  String SelectOpration = "ADD";
  late TextEditingController _Text1 = TextEditingController();
  late TextEditingController _Text2 = TextEditingController();
  late String result = "";

  void _calculation() {
    double? number1 = double.tryParse(_Text1.text) ?? 0;
    double? number2 = double.tryParse(_Text2.text) ?? 0;
    double Result;
    switch (SelectOpration) {
      case 'ADD':
        Result = number1 + number2;
        break;

      case 'Sub':
        Result = number1 - number2;
        break;

      case 'Mul':
        Result = number1 * number2;
        break;

      case 'Div':
        Result = number1 / number2;
        break;

      default:
        Result = 0;
    }

    setState(() {
      result = SelectOpration == 'Div' && number2 == 0
          ? 'Cannot Divide By Zero'
          : 'Result = $Result';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: TextField(
              controller: _Text1,
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                label: Text("Enter First Number"),
              ),
              keyboardType: TextInputType.number,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: TextField(
              controller: _Text2,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)),
                  label: Text("Enter Second Number")),
              keyboardType: TextInputType.number,
            ),
          ),
          RadioListTile(
              title: Text("Addition"),
              value: 'ADD',
              groupValue: SelectOpration,
              onChanged: (value) {
                setState(() {
                  SelectOpration = value!;
                });
              }),
          RadioListTile(
              title: Text('Subtraction'),
              value: 'Sub',
              groupValue: SelectOpration,
              onChanged: (value) {
                setState(() {
                  SelectOpration = value!;
                });
              }),
          RadioListTile(
              title: Text('Multiplication'),
              value: 'Mul',
              groupValue: SelectOpration,
              onChanged: (value) {
                setState(() {
                  SelectOpration = value!;
                });
              }),
          RadioListTile(
            title: Text("Division"),
            value: 'Div',
            groupValue: SelectOpration,
            onChanged: (value) {
              setState(() {
                SelectOpration = value!;
              });
            },
          ),
          ElevatedButton(onPressed: _calculation, child: Text("Calculate")),
          Text(
            result,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
