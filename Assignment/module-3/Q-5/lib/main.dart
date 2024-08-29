import 'package:flutter/material.dart';

void main() {
  runApp(const ChangeBackground());
}

class ChangeBackground extends StatefulWidget {
  const ChangeBackground({super.key});

  @override
  State<ChangeBackground> createState() => _ChangeBackgroundState();
}

class _ChangeBackgroundState extends State<ChangeBackground> {
  List image = ['assets/1.jpg', 'assets/2.jpg', 'assets/3.jpg', 'assets/4.jpg'];
  int curentindex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Stack(
        children: [
          Image.asset(
            image[curentindex],
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Center(
                child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        curentindex = (curentindex + 1) % image.length;
                      });
                    },
                    child: Text("Change BackGround")),
              ),
            ],
          )
        ],
      )),
    );
  }
}
