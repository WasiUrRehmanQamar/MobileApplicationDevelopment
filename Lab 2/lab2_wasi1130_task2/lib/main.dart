import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
    backgroundColor: Colors.lightGreen,
    appBar: AppBar(
      backgroundColor: Colors.red,
      title: Text("I Am Rick"),
    ),
    body: Center(
      child: Center(
        child: Image.asset('assets/images/rick.jpeg')
        ),
    ),
  )));
}
