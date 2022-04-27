// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        title: Center(child: Text("Discover")),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: GestureDetector(
              onTap: () {},
              child: IconButton(
                icon: const Icon(Icons.search),
                color: Colors.black,
                onPressed: () {},
              ),
            ),
          ),
        ],
        leading: GestureDetector(
          onTap: () {},
          child: IconButton(
            icon: const Icon(Icons.menu),
            color: Colors.black,
            onPressed: () {},
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  '.',
                  style: TextStyle(fontSize: 40, color: Color(0xff79ae9e)),
                ),
                Text(
                  '.',
                  style: TextStyle(fontSize: 40, color: Color(0xffdcdcdc)),
                ),
                Text(
                  '.',
                  style: TextStyle(fontSize: 40, color: Color(0xffdcdcdc)),
                ),
                Text(
                  '.',
                  style: TextStyle(fontSize: 40, color: Color(0xffdcdcdc)),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Indonesia',
                  style: TextStyle(fontSize: 20, color: Color(0xff79ae9e)),
                ),
                Text(
                  'Thailand',
                  style: TextStyle(fontSize: 20, color: Color(0xffdcdcdc)),
                ),
                Text(
                  'China',
                  style: TextStyle(fontSize: 20, color: Color(0xffdcdcdc)),
                ),
                Text(
                  'Vietnam',
                  style: TextStyle(fontSize: 20, color: Color(0xffdcdcdc)),
                )
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50.0, right: 50.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network(
                      'https://images.unsplash.com/reserve/bOvf94dPRxWu0u3QsPjF_tree.jpg?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max',
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Bali Island',
                            style: TextStyle(fontSize: 20),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.more_vert),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.bed),
                          color: Colors.teal,
                        ),
                        Text(
                          'Hotels',
                          style: TextStyle(color: Colors.teal),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Top Destinations',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'View All',
                      style: TextStyle(color: Colors.teal),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                  child: Row(
                children: [
                  Expanded(
                      child: Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.white70, width: 1),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: ListTile(
                      leading: ClipRRect(
                        borderRadius: BorderRadius.circular(18),
                        child: Image(
                          image: NetworkImage(
                              'https://images.unsplash.com/reserve/bOvf94dPRxWu0u3QsPjF_tree.jpg?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max'),
                          height: 100,
                          width: 70,
                        ),
                      ),
                      title: Text(
                        'Bandung',
                        style: TextStyle(fontSize: 16),
                      ),
                      subtitle: Text(
                        'West Java',
                        style: TextStyle(fontSize: 10),
                      ),
                    ),
                  )),
                  Expanded(
                      child: Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.white70, width: 1),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: ListTile(
                      leading: ClipRRect(
                        borderRadius: BorderRadius.circular(18),
                        child: Image(
                          image: NetworkImage(
                              'https://images.unsplash.com/reserve/bOvf94dPRxWu0u3QsPjF_tree.jpg?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max'),
                          height: 100,
                          width: 70,
                        ),
                      ),
                      title: Text(
                        'Lombok',
                        style: TextStyle(fontSize: 16),
                      ),
                      subtitle: Text(
                        'NTB',
                        style: TextStyle(fontSize: 10),
                      ),
                    ),
                  ))
                ],
              )),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(15.0),
        child: BottomNavigationBar(
          elevation: 0,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '',
              backgroundColor: Color(0xff23a990),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.navigation),
              label: '',
              backgroundColor: Colors.green,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.star),
              label: '',
              backgroundColor: Colors.purple,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: '',
              backgroundColor: Colors.pink,
            ),
          ],
        ),
      ),
    );
  }
}
