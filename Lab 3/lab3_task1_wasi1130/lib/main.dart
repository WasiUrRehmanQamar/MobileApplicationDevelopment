import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
         home: Scaffold(
        backgroundColor: Colors.blueGrey,
          appBar: AppBar(
            backgroundColor: Colors.brown,
            title: Text(
              "Mobile App Dev lab"
              ),
          ),
          body: Center(
            child: Text(
              "You have pushed the button 0 times"
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: null,
            tooltip: 'This button is not functional',
            child: const Icon(Icons.add),
          ))
    );
  }
}
