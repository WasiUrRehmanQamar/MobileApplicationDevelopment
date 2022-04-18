// ignore_for_file: deprecated_member_use, avoid_unnecessary_containers, prefer_const_constructors, avoid_print, unused_import, unused_local_variable
import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const BallPage());
}

class BallPage extends StatelessWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Random random = Random();
    int number = random.nextInt(4) + 1;

    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.blue,
          appBar: AppBar(
            title: Text("Ask Me Anything"),
            backgroundColor: Colors.blue[900],
          ),
          body: Center(
            child: Container(
              child: FlatButton(
                  onPressed: () {
                    print("I Got Clicked");
                    print('$number');
                  },
                  child: Image.asset('assets/images/ball1.png')),
            ),
          )),
    );
  }
}
