// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables, override_on_non_overriding_member, annotate_overrides, avoid_print, unused_import, non_constant_identifier_names, prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'dart:convert';

class WeatherIcon {
  Widget getIcon(int condition) {
    if (condition < 300) {
      return Image.network('http://openweathermap.org/img/wn/02d@2x.png');
    } else if (condition < 400) {
      return Image.network('http://openweathermap.org/img/wn/09d@2x.png');
    } else if (condition < 600) {
      return Image.network('http://openweathermap.org/img/wn/10d@2x.png');
    } else if (condition < 700) {
      return Image.network('http://openweathermap.org/img/wn/13d@2x.png');
    } else if (condition < 800) {
      return Image.network('http://openweathermap.org/img/wn/04d@2x.png');
    } else if (condition == 800) {
      return Image.network('http://openweathermap.org/img/wn/01d@2x.png');
    } else if (condition <= 804) {
      return Image.network('http://openweathermap.org/img/wn/03d@2x.png');
    } else {
      return Image.network(
          'https://www.pngfind.com/mpng/iJhbi_question-mark-png-image-transparent-white-question-mark/');
    }
  }
}

class LocationScreen extends StatefulWidget {
  const LocationScreen({this.Data});
  final dynamic Data;

  @override
  _LocationScreenState createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  WeatherIcon icons = WeatherIcon();
  dynamic Temperature;
  dynamic City;
  dynamic Icon;

  @override
  void Get(dynamic WeatherData) {
    Temperature = WeatherData['main']['temp'];
    var weathercode = WeatherData['weather'][0]['id'];
    Icon = icons.getIcon(weathercode);
    City = WeatherData['name'].toString();
  }

  void initState() {
    super.initState();
    Get(widget.Data);
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Location Screen'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Temperature : '),
                  Text(Temperature.toString()),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('City : '),
                  Text(City.toString()),
                ],
              ),
              Icon,
            ],
          ),
        ),
      ),
    );
  }
}
