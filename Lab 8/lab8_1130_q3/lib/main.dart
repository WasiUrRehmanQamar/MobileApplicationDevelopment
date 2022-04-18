// ignore_for_file: prefer_const_constructors, avoid_print, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

void main() {
  runApp(GeoLocation());
}

class GeoLocation extends StatefulWidget {
  const GeoLocation({Key? key}) : super(key: key);

  @override
  State<GeoLocation> createState() => _GeoLocState();
}

class _GeoLocState extends State<GeoLocation> {
  @override
  initState() {
    getLocation();
    checklocationStatus();
    super.initState();
  }

  dynamic PermissionStatus;
  dynamic Latitude;
  dynamic Longitude;

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
  }

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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black45,
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Center(child: Text('Lab 8 - Q 3')),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Click The Icon Button To Retrive Data'),
              SizedBox(
                height: 30,
              ),
              IconButton(
                  onPressed: () {
                    getLocation();
                  },
                  icon: Icon(Icons.location_on)),
              SizedBox(
                height: 30,
              ),
              Text('Latitude : $Latitude'),
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
              Text('$PermissionStatus')
            ],
          ),
        ),
      ),
    );
  }
}
