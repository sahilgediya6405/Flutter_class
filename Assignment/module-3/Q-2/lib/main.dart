import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 300,
                width: double.maxFinite,
                child: Image.network(
                  'https://t3.ftcdn.net/jpg/00/56/04/44/360_F_56044460_ToC916mgN9XIURPcNEQMQnRGF41TeJ2y.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text("Oeschinen Lake Campground"),
                        SizedBox(height: 5),
                        Text('Caspian Sea,Russia and Iran'),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 30,
                          ),
                          Text(
                            '41',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("Call Sending...")));
                    },
                    child: Column(
                      children: [
                        Icon(
                          Icons.phone,
                          color: Colors.blue,
                        ),
                        Text(
                          'CALL',
                          style: TextStyle(color: Colors.blue),
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content:
                              Text("Sarching Your Direction... Pls Wait...")));
                    },
                    child: Column(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: Colors.blue,
                        ),
                        Text(
                          'ROUTE',
                          style: TextStyle(color: Colors.blue),
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                      onTap: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text("Share Successfully...")));
                      },
                      child: Column(
                        children: [
                          Icon(
                            Icons.share,
                            color: Colors.blue,
                          ),
                          Text(
                            'SHARE',
                            style: TextStyle(color: Colors.blue),
                          ),
                        ],
                      ))
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(30),
                child: Text(
                    'Lake Oeschinen lies at the foot of the Blüemlisalp. Situated 1,578 meter'
                    'above sea level, it is one of the larger Alpine Lakes. A gondola train leads'
                    'from Kandersteg to a location near the lake. A half-hour walk across pastures'
                    'and through pine forest takes you to the lake. The water in the lake warms up'
                    'to 20 degree Celsius in the summer. Activities enjoyed here include rowing or'
                    'riding on the summer toboggan run'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
