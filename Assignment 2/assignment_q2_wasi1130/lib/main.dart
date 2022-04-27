// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_local_variable, prefer_final_fields, unused_field, non_constant_identifier_names, missing_required_param

import 'Calculate.dart';
import 'Result.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MyApp());
}

enum Gender {
  female,
  male,
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const primaryColor = Color(0xff1c2135);
    return MaterialApp(
        theme: ThemeData(
          primaryColor: primaryColor,
        ),
        home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: primaryColor,
            title: Text('BMI CALCULATOR'),
          ),
          body: MyHomePage(),
        ));
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Gender? SelectedGender;
  int height = 180;
  double _currentSliderValue = 20;
  int Weight = 80;
  int Age = 30;
  @override
  Widget build(BuildContext context) {
    const primaryColor = Color(0xff1c2135);

    return SingleChildScrollView(
      child: Center(
          child: Container(
        color: primaryColor,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(children: [
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        SelectedGender = Gender.male;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: SelectedGender == Gender.male
                            ? Color.fromARGB(15, 206, 192, 194)
                            : Color(0xff24263b),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xff24263b).withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(15, 30, 15, 30),
                        child: Column(children: [
                          Icon(
                            Icons.male,
                            size: 50,
                            color: Colors.white,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'MALE',
                            style: TextStyle(color: Colors.white),
                          )
                        ]),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        SelectedGender = Gender.female;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: SelectedGender == Gender.female
                            ? Color.fromARGB(15, 206, 192, 194)
                            : Color(0xff24263b),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xff24263b).withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(15, 30, 15, 30),
                        child: Column(children: [
                          Icon(
                            Icons.female,
                            size: 50,
                            color: Colors.white,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'FEMALE',
                            style: TextStyle(color: Colors.white),
                          )
                        ]),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xff24263b),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10)),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xff24263b).withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(15, 30, 15, 30),
                      child: Column(children: [
                        Text(
                          'HEIGHT',
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              height.toString(),
                              style: TextStyle(
                                  fontSize: 40.0,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.white),
                            ),
                            Text(
                              ' CM',
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                        Slider(
                          value: height.toDouble(),
                          min: 80,
                          max: 220,
                          activeColor: Colors.pink,
                          onChanged: (double value) {
                            setState(() {
                              height = value.round();
                            });
                          },
                        ),
                      ]),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {});
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xff24263b),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xff24263b).withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(15, 30, 15, 30),
                        child: Column(children: [
                          Text(
                            'WEIGHT',
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            Weight.toString(),
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 35,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  RawMaterialButton(
                                    child: Icon(
                                      FontAwesomeIcons.plus,
                                      color: Colors.white,
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        Weight++;
                                      });
                                    },
                                    elevation: 0.0,
                                    constraints: BoxConstraints.tightFor(
                                      width: 40.0,
                                      height: 40.0,
                                    ),
                                    fillColor: Color(0xFF4C4F5F),
                                    shape: CircleBorder(),
                                  ),
                                  RawMaterialButton(
                                    child: Icon(
                                      FontAwesomeIcons.minus,
                                      color: Colors.white,
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        if (Weight > 0) {
                                          Weight--;
                                        }
                                      });
                                    },
                                    elevation: 0.0,
                                    constraints: BoxConstraints.tightFor(
                                      width: 40.0,
                                      height: 40.0,
                                    ),
                                    fillColor: Color(0xFF4C4F5F),
                                    shape: CircleBorder(),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ]),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {});
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xff24263b),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xff24263b).withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(15, 30, 15, 30),
                        child: Column(children: [
                          Text(
                            'AGE',
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            Age.toString(),
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 35,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  RawMaterialButton(
                                    child: Icon(
                                      FontAwesomeIcons.plus,
                                      color: Colors.white,
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        Age++;
                                      });
                                    },
                                    elevation: 0.0,
                                    constraints: BoxConstraints.tightFor(
                                      width: 40.0,
                                      height: 40.0,
                                    ),
                                    fillColor: Color(0xFF4C4F5F),
                                    shape: CircleBorder(),
                                  ),
                                  RawMaterialButton(
                                    child: Icon(
                                      FontAwesomeIcons.minus,
                                      color: Colors.white,
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        if (Age > 0) {
                                          Age--;
                                        }
                                      });
                                    },
                                    elevation: 0.0,
                                    constraints: BoxConstraints.tightFor(
                                      width: 40.0,
                                      height: 40.0,
                                    ),
                                    fillColor: Color(0xFF4C4F5F),
                                    shape: CircleBorder(),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ]),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {},
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.pink,
                          padding: EdgeInsets.symmetric(
                              horizontal: 30, vertical: 20),
                          textStyle: TextStyle(
                            fontSize: 18,
                          )),
                      onPressed: () {
                        Calculate calcBrain =
                            Calculate(Height: height, Weight: Weight);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Result(
                                    BMI: calcBrain.BMI(),
                                    Status: calcBrain.Status(),
                                    Precaution: calcBrain.Precaution(),
                                  )),
                        );
                      },
                      child: Text('CALCULATE'),
                    ),
                  ),
                )
              ],
            )
          ]),
        ),
      )),
    );
  }
}
