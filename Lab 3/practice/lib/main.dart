// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.teal,
        // child: Column(
        //   crossAxisAlignment: CrossAxisAlignment.stretch,
        //   children: <Widget>[
        //       Container(
        //         width: 200,
        //         height: 100,
        //         color: Colors.red,
        //       ),
        //       Container(
        //         width: 100,
        //         height: 100,
        //         color: Colors.green,
        //       ),
        //       Container(
        //         width: 100,
        //         height: 100,
        //         color: Colors.blue,
        //       )
        //   ],
        // ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.all(10),
              width: 100,
              height: 200,
              color: Colors.red,
               child: Text(
                "Red"
              ),
            ),
             Container(
               margin: EdgeInsets.only(right: 20),
              width: 100,
              height: 100,
              color: Colors.green,
               child: Text(
                "Green"
              ),
            ),
             Container(
               margin: EdgeInsets.symmetric(vertical: 0 , horizontal: 30),
              width: 100,
              height: 100,
              color: Colors.blue,
              child: Text(
                "Blue"
              ),
            )
            ,
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                // Text("Wasi"),
                // Text("Qamar"),
                CircleAvatar(
                  backgroundImage: NetworkImage(
                    "https://www.lifewire.com/thmb/VPDg14PwFDcHiO8LEoG7V3yoIKg=/1369x770/smart/filters:no_upscale()/what-is-google-chrome-4687647-1-2221a672e4ec430abcec202ab0220476.jpg"
                    ),
                ),
                // Card(
                //   child: Column(
                //     mainAxisSize: MainAxisSize.min,
                //     children: [
                //       ListTile(
                //         leading: Icon(Icons.album, size: 45,),
                //         title: Text("Hello"),
                //         subtitle: Text("Testing"),
                //       )
                //     ]
                //   ),
                // )
              ],
            ),
          ]
        ),
      ),
    );
  }
}
