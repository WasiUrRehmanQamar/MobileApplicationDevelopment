// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_local_variable, prefer_final_fields, unused_field, non_constant_identifier_names, avoid_unnecessary_containers, prefer_typing_uninitialized_variables, missing_required_param, must_be_immutable, use_key_in_widget_constructors

import 'package:assignment_q2_wasi1130/main.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Result());
}

class Result extends StatelessWidget {
  var BMI;
  var Status;
  var Precaution;

  Result(
      {@required this.BMI, @required this.Status, @required this.Precaution});

  @override
  Widget build(BuildContext context) {
    const primaryColor = Color(0xff1c2135);
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: primaryColor,
          title: Text('BMI CALCULATOR'),
        ),
        body: Container(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Container(
                  color: primaryColor,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Text(
                              'RESULT',
                              style:
                                  TextStyle(fontSize: 30, color: Colors.white),
                            ),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: Color(0xff24263b),
                          ),
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(0, 50, 0, 50),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Center(
                                  child: Text(
                                    Status.toString(),
                                    style: TextStyle(
                                        fontSize: 18, color: Colors.green),
                                  ),
                                ),
                                SizedBox(
                                  height: 50,
                                ),
                                Center(
                                  child: Text(
                                    BMI.toString(),
                                    style: TextStyle(
                                        fontSize: 58, color: Colors.white),
                                  ),
                                ),
                                SizedBox(
                                  height: 50,
                                ),
                                Center(
                                  child: Text(
                                    Precaution.toString(),
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.white),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
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
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => const MyApp()),
                                    );
                                  },
                                  child: Text('RE-CALCULATE'),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
