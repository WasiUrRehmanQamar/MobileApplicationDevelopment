// ignore_for_file: prefer_const_constructors, unused_import, deprecated_member_use, avoid_unnecessary_containers, avoid_print, prefer_const_literals_to_create_immutables, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:lab9_wasi1130/LocationScreen.dart';

void main() {
  runApp(
    MaterialApp(
      home: LoadingScreen(),
    ),
  );
}

dynamic WeatherData;
dynamic Latitude;
dynamic Longitude;
dynamic PermissionStatus;

class NetworkHelper {
  final Uri uri;
  NetworkHelper(this.uri);
  Future getdata() async {
    http.Response res = await http.get(uri);
    if (res.statusCode == 200) {
      String data = res.body;
      return jsonDecode(data);
    } else {
      print(res.statusCode);
    }
  }
}

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  State<LoadingScreen> createState() => _MyAppState();
}

class _MyAppState extends State<LoadingScreen> {
  /* 
    3. Modify the code done in task 1 to print the longitude and latitude
    of the current position on start of app instead of button press.
  */

  /* Start */

  @override
  initState() {
    getLocation();
    checklocationStatus();
    super.initState();
  }

  /* End */

  /* 
      1.	Implement the “geolocator” package to determine the current position
      of the device upon click of the button. After determining the position of
      longitude and latitude of the current position.
  */

  /* Start */

  void getLocation() async {
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.best);
    print('Location Called');
    print(position.latitude);
    print(position.longitude);
    setState(() {
      Latitude = position.latitude;
      Longitude = position.longitude;
    });

    NetworkHelper helper = NetworkHelper(
      Uri.parse(
          'http://api.openweathermap.org/data/2.5/weather?units=metric&lat=$Latitude&lon=$Longitude&appid=114922bfcf0309eb51a43eec8809aaf4'),
    );

    WeatherData = await helper.getdata();
  }

  /* End */

  /* 
    2.	Determine the current permission status for GPS in the App.
  */

  /* Start */

  void checklocationStatus() async {
    LocationPermission Permissions = await Geolocator.checkPermission();
    if (Permissions == LocationPermission.denied) {
      setState(() {
        PermissionStatus = 'Permission Denied';
      });
      print("Permission Denied");
    } else {
      setState(() {
        PermissionStatus = 'Permission Allowed';
      });
      print("Permission Allowed");
    }
  }

  /* End */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Weather App - Loading Screen'),
        ),
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: SpinKitChasingDots(
                  color: Colors.grey,
                  size: 40,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {
                  getLocation();
                },
                child: Text('Click Here To Get Latitude & Longitude'),
              ),
              SizedBox(
                height: 30,
              ),
              Text('Latitude : $Latitude'),
              SizedBox(
                height: 30,
              ),
              Text('Longitude : $Longitude'),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  onPressed: () {
                    checklocationStatus();
                  },
                  child: Text('Check Permission Status')),
              SizedBox(
                height: 30,
              ),
              Text('Permission Status: $PermissionStatus'),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => LocationScreen(
                              Data: WeatherData,
                            )),
                  );
                },
                child: Text('Go to Location Screen'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
