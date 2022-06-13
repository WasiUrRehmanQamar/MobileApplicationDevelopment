// ignore_for_file: prefer_const_constructors , prefer_const_literals_to_create_immutables, must_be_immutable, prefer_const_constructors_in_immutables, non_constant_identifier_names, deprecated_member_use, unused_import

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  AudioCache audioCache = AudioCache();
  int Number = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child:
                Text('Mid Evaluation - Wasi Ur Rehman Qamar / 19-NTU-CS-1130'),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                onPressed: () {
                  setState(() {});
                  Number = Random().nextInt(6) + 1;
                  audioCache.play('note$Number.wav');
                },
                child: Image.asset('assets/image/dice$Number.png'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
