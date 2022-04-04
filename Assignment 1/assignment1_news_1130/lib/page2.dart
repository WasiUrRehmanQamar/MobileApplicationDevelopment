// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, deprecated_member_use
// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

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
                        color: Color(0xff23252f),
                        onPressed: () {},
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Following",
                              style: TextStyle(color: Color(0xFFff736d)),
                            )
                          ],
                        ),
                        shape: RoundedRectangleBorder(
                            side: BorderSide(
                                color: Color(0xFFff736d),
                                width: 1,
                                style: BorderStyle.solid),
                            borderRadius: BorderRadius.circular(50)),
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
                        color: Color(0xFFff736d),
                        onPressed: () {},
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Follow",
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                        shape: RoundedRectangleBorder(
                            side: BorderSide(
                                color: Color(0xFFff736d),
                                width: 1,
                                style: BorderStyle.solid),
                            borderRadius: BorderRadius.circular(50)),
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
                        color: Color(0xff23252f),
                        onPressed: () {},
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Following",
                              style: TextStyle(color: Color(0xFFff736d)),
                            )
                          ],
                        ),
                        shape: RoundedRectangleBorder(
                            side: BorderSide(
                                color: Color(0xFFff736d),
                                width: 1,
                                style: BorderStyle.solid),
                            borderRadius: BorderRadius.circular(50)),
                      ),
                      subtitle: Text(
                        "616.3K Followers",
                        style: TextStyle(color: Colors.white),
                      ),
                      leading: CircleAvatar(
                        child: Image.asset('assets/images/cnn.png'),
                      ),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
