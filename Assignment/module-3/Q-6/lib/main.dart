import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: FontSize(),
  ));
}

class FontSize extends StatefulWidget {
  const FontSize({super.key});

  @override
  State<FontSize> createState() => _FontSizeState();
}

class _FontSizeState extends State<FontSize> {
  double fontsize = 14;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("HELLO FLUTTER DEV...",
              style: TextStyle(
                fontSize: fontsize,
              )),
          Padding(
            padding: const EdgeInsets.only(top: 150),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      fontsize++;
                    });
                  },
                  child: Text(
                    "increate font size",
                  ),
                ),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        fontsize--;
                      });
                    },
                    child: Text("decrease font size")),
              ],
            ),
          )
        ],
      ),
    );
  }
}
