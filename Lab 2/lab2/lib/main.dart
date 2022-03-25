import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.blueGrey,
      floatingActionButton: const FloatingActionButton(
        onPressed: null,
        tooltip: "This Button Is Not Pressable",
        hoverColor: Colors.yellow,
        child: Text(
          "Press",
          style: TextStyle(
            color: Colors.red,
            
          ),
          ),
      ),
      appBar: AppBar(
        title: const Text(
          "Hello World",
        ),
        backgroundColor: Colors.red,
      ),
      body: const Text(
        "Hello World",
      ),
    ),
  ));
}
