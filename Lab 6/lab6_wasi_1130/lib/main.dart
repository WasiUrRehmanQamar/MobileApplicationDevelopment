// ignore_for_file: prefer_const_constructors, implementation_imports, unnecessary_import, unused_import, use_key_in_widget_constructors, avoid_unnecessary_containers, deprecated_member_use, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'QuizList.dart';
import 'QuestionList.dart';

void main() {
  runApp(Lab6());
}

class Lab6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Theme(
        data: ThemeData(
          splashColor: Colors.white,
        ),
        child: Scaffold(
          backgroundColor: Color.fromARGB(255, 19, 18, 18),
          body: SafeArea(
            child: Quiz(),
          ),
        ),
      ),
    );
  }
}

class Quiz extends StatefulWidget {
  @override
  _MyQuizState createState() => _MyQuizState();
}

class _MyQuizState extends State<Quiz> {
  QuizBrain Object = QuizBrain();
  List<Widget> StoredAnswer = [];

  void CheckAnswer(bool Answer) {
    bool True = Object.CorrectAnswer();
    if (Object.isFinished() == true) {
      Object.Reset();
      StoredAnswer = [];
    } else {
      if (True == Answer) {
        StoredAnswer.add(
          Icon(Icons.check, color: Colors.green),
        );
      } else {
        StoredAnswer.add(
          Icon(Icons.close, color: Colors.red),
        );
      }
      setState(() {
        Object.NextQuestions();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 5,
            child: Center(
              child: Text(
                Object.GetQuestions(),
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0)),
                color: Colors.red,
                onPressed: () {
                  CheckAnswer(false);
                },
                child: Text(
                  'False',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0)),
                onPressed: () {
                  CheckAnswer(true);
                },
                child: Text(
                  'True',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
                color: Colors.green,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: StoredAnswer,
          ),
          SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
