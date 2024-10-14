import 'package:flutter/material.dart';

class CitySelectionScreen extends StatefulWidget {
  @override
  _CitySelectionScreenState createState() => _CitySelectionScreenState();
}

class _CitySelectionScreenState extends State<CitySelectionScreen> {
  String selectedCity = 'No city selected';

  final List<String> cities = [
    'New York',
    'London',
    'Paris',
    'Tokyo',
    'Berlin',
    'Sydney'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('City Selection'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            _showCitySelectionDialog(context);
          },
          child: Text('Select City'),
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(20.0),
        child: Text(
          selectedCity,
          style: TextStyle(fontSize: 18.0),
        ),
      ),
    );
  }

  void _showCitySelectionDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Select a city'),
          content: SingleChildScrollView(
            child: Column(
              children: cities
                  .map(
                    (city) => ListTile(
                      title: Text(city),
                      onTap: () {
                        setState(() {
                          selectedCity = city;
                        });
                        Navigator.of(context).pop();
                      },
                    ),
                  )
                  .toList(),
            ),
          ),
        );
      },
    );
  }
}
