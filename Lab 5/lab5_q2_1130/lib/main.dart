// ignore_for_file: deprecated_member_use, prefer_const_constructors, prefer_equal_for_default_values, use_function_type_syntax_for_parameters, unused_import, avoid_unnecessary_containers, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

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
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Container(
        child: Row(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          Buttons(1, Colors.yellow),
          Buttons(2, Colors.black),
          Buttons(3, Colors.purple),
          Buttons(4, Colors.blue),
          Buttons(5, Colors.orange),
          Buttons(6, Colors.red),
          Buttons(7, Colors.green),
        ]),
      )),
    );
  }

  Expanded Buttons(Audio, CustomColor) {
    return Expanded(
        child: FlatButton(
      color: CustomColor,
      onPressed: () {
        audioCache.play('note$Audio.wav');
      },
      child: Text(""),
    ));
  }
}
