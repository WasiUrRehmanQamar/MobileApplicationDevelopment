// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, deprecated_member_use
// ignore_for_file: prefer_const_literals_to_create_immutables

import 'page2.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: NewsUI()));
}

class NewsUI extends StatefulWidget {
  const NewsUI({Key? key}) : super(key: key);

  @override
  State<NewsUI> createState() => _NewsUIState();
}

class _NewsUIState extends State<NewsUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.fromLTRB(20.0, 50.0, 20.0, 50.0),
          child: Center(
              child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 20.0),
                child: Image.asset('assets/images/bbc.png'),
              ),
              Container(
                child: Text(
                  "Flutter is Awsome",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20.0, bottom: 30.0),
                child: Text("Student"),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 20),
                child: Container(
                  margin: EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(bottom: 10),
                            child: Text(
                              "872.4K",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Text("Hits"),
                        ],
                      ),
                      Container(
                        color: Colors.grey[200],
                        height: 50,
                        width: 1.5,
                      ),
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(bottom: 10),
                            child: Text(
                              "6.5M",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Text("Followers"),
                        ],
                      ),
                      Container(
                        color: Colors.grey[200],
                        height: 50,
                        width: 1.5,
                      ),
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(bottom: 10),
                            child: Text(
                              "127",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Text("Following"),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Divider(
                color: Colors.grey[200],
                height: 0.5,
              ),
              Container(
                margin: EdgeInsets.only(top: 20, bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    FlatButton(
                      color: Color(0xFFff736d),
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 30, right: 30, top: 10, bottom: 10),
                        child: Row(
                          children: [
                            Icon(
                              Icons.person_add_alt_1_rounded,
                              color: Colors.white,
                            ),
                            SizedBox(width: 10),
                            Text(
                              "Follow",
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)),
                    ),
                    FlatButton(
                      color: Colors.white,
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 30, right: 30, top: 10, bottom: 10),
                        child: Row(
                          children: [
                            Icon(
                              Icons.web,
                              color: Color(0xFFff736d),
                            ),
                            SizedBox(width: 10),
                            Text(
                              "Website",
                              style: TextStyle(color: Color(0xFFff736d)),
                            )
                          ],
                        ),
                      ),
                      shape: RoundedRectangleBorder(
                          side: BorderSide(
                              color: Color(0xFFff736d),
                              width: 1,
                              style: BorderStyle.solid),
                          borderRadius: BorderRadius.circular(50)),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(20),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Text(
                            "Top News",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            color: Color(0xFFff736d),
                            height: 2.5,
                            width: 200,
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "Recent",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            color: Colors.grey,
                            height: 1.5,
                            width: 200,
                          ),
                        ],
                      )
                    ]),
              ),
              Container(
                margin: EdgeInsets.all(8.0),
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8.0))),
                  child: Padding(
                    padding: const EdgeInsets.all(50.0),
                    child: ListTile(
                      leading: Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: FlutterLogo(
                          size: 75,
                        ),
                      ),
                      title: Text(
                          "Wow! USA Develops New Way of Faster and More ..."),
                      subtitle: Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text("Wasi"),
                              FlatButton(
                                color: Colors.white,
                                onPressed: () {},
                                child: Row(
                                  children: [
                                    Text(
                                      "Health",
                                      style: TextStyle(
                                          color: Color(0xFFff736d),
                                          fontSize: 11),
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
                            ]),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(8.0),
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8.0))),
                  child: Padding(
                    padding: const EdgeInsets.all(50.0),
                    child: ListTile(
                      leading: Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: FlutterLogo(
                          size: 75,
                        ),
                      ),
                      title: Text(
                          "Manchester United Adds a Famous Portugal Player ..."),
                      subtitle: Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text("Wasi"),
                              FlatButton(
                                color: Colors.white,
                                onPressed: () {},
                                child: Row(
                                  children: [
                                    Text(
                                      "Sport",
                                      style: TextStyle(
                                          color: Color(0xFFff736d),
                                          fontSize: 11),
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
                            ]),
                      ),
                    ),
                  ),
                ),
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
                      MaterialPageRoute(builder: (context) => const NewsUI1()),
                    );
                  },
                  child: Text('Go To Second Page')),
            ],
          )),
        ),
      ),
    );
  }
}
