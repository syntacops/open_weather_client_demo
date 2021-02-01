import 'package:flutter/material.dart';
import 'package:open_weather_client/open_weather.dart';

import 'prebuilt_functions_demo_screen.dart';

class PrebuiltWidgetsScreen extends StatefulWidget {
  @override
  _PrebuiltWidgetsScreenState createState() => _PrebuiltWidgetsScreenState();
}

class _PrebuiltWidgetsScreenState extends State<PrebuiltWidgetsScreen> {
  final String _cityName = 'Miami';
  final String _key = 'c4bbb94f9fcfede0eb5219111804b040';
  final double _latitude = 52.3545828;
  final double _longitude = 4.7638781;

  Widget _buildButton() {
    return RaisedButton(
      child: Text('Check with prebuilt functions'),
      onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(
              builder: (BuildContext context) => PrebuiltFunctionScreen())),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          elevation: 0,
          title: Text(
            'OpenWeather prebuilt widgets',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Container(
          color: Colors.black,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              OpenWeatherByCity(
                apiKey: _key,
                cityName: _cityName,
                weatherUnits: WeatherUnits.METRIC,
                color: Colors.white,
              ),
              Divider(
                thickness: 1,
                color: Colors.white,
              ),
              OpenWeatherByLocation(
                apiKey: _key,
                latitude: _latitude,
                longitude: _longitude,
                weatherUnits: WeatherUnits.METRIC,
                color: Colors.white,
              ),
              _buildButton()
            ],
          ),
        ));
  }
}
