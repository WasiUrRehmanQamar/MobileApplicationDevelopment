// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, deprecated_member_use
// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'main.dart';

void main() {
  runApp(const NewsUI1());
}

class NewsUI1 extends StatefulWidget {
  const NewsUI1({Key? key}) : super(key: key);

  @override
  State<NewsUI1> createState() => _NewsUI1State();
}

class _NewsUI1State extends State<NewsUI1> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xff1a1b22),
        body: Container(
          margin: EdgeInsets.only(top: 80, bottom: 80, left: 30, right: 30),
          child: Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Text(
                  "Search Results",
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  "22,276 founds",
                  style: TextStyle(color: Color(0xFFff736d)),
                )
              ]),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Card(
                    color: Color(0xff23252f),
                    child: ListTile(
                      title: Text(
                        "BBC News",
                        style: TextStyle(color: Colors.white),
                      ),
                      trailing: FlatButton(
                        minWidth: 100,
                        splashColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            side: BorderSide(
                                color: Color(0xFFff736d),
                                width: 1,
                                style: BorderStyle.solid),
                            borderRadius: BorderRadius.circular(50)),
                        color: Color(0xFFff736d),
                        onPressed: () {},
                        child: const Text(
                          " + Follow ",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      subtitle: Text(
                        "6.5M Followers",
                        style: TextStyle(color: Colors.white),
                      ),
                      leading: CircleAvatar(
                        child: Image.asset('assets/images/bbc.png'),
                      ),
                    )),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Card(
                    color: Color(0xff23252f),
                    child: ListTile(
                      title: Text(
                        "CNET",
                        style: TextStyle(color: Colors.white),
                      ),
                      trailing: FlatButton(
                        minWidth: 100,
                        splashColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            side: BorderSide(
                                color: Color(0xFFff736d),
                                width: 1,
                                style: BorderStyle.solid),
                            borderRadius: BorderRadius.circular(50)),
                        color: Color(0xFFff736d),
                        onPressed: () {},
                        child: const Text(
                          " + Follow ",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      subtitle: Text(
                        "143K Followers",
                        style: TextStyle(color: Colors.white),
                      ),
                      leading: CircleAvatar(
                        child: Image.asset('assets/images/cnet.png'),
                      ),
                    )),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Card(
                    color: Color(0xff23252f),
                    child: ListTile(
                      title: Text(
                        "CNN",
                        style: TextStyle(color: Colors.white),
                      ),
                      trailing: FlatButton(
                        minWidth: 100,
                        splashColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            side: BorderSide(
                                color: Color(0xFFff736d),
                                width: 1,
                                style: BorderStyle.solid),
                            borderRadius: BorderRadius.circular(50)),
                        color: Colors.transparent,
                        onPressed: () {},
                        child: const Text(
                          " Following ",
                          style: TextStyle(
                              color: Color(0xFFff736d),
                              fontWeight: FontWeight.bold,
                              fontSize: 14),
                        ),
                      ),
                      subtitle: Text(
                        "616.3K Followers",
                        style: TextStyle(color: Colors.white),
                      ),
                      leading: CircleAvatar(
                        child: Image.asset('assets/images/cnn.png'),
                      ),
                    )),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  style: (ButtonStyle(
                      padding: MaterialStateProperty.all(
                          EdgeInsets.fromLTRB(30, 20, 30, 20)),
                      backgroundColor:
                          MaterialStateProperty.all(Color(0xFFff736d)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      )))),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const NewsUI()),
                    );
                  },
                  child: Text('Go To First Page')),
            ],
          ),
        ),
      ),
    );
  }
}
