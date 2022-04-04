// ignore_for_file: non_constant_identifier_names

import 'QuestionList.dart';

class QuizBrain {
  int QuestionNumber = 0;

  final List<Questions> QuestionsList = [
    Questions('Question No 1', false),
    Questions('Question No 2', true),
    Questions('Question No 3', true),
    Questions('Question No 4', true),
    Questions('Question No 5', false),
    Questions('Question No 6', false),
    Questions('Question No 7', true),
    Questions('Question No 8', true),
    Questions('Question No 9', true),
    Questions('Question No 10', false),
  ];

  void NextQuestions() {
    if (QuestionNumber < QuestionsList.length - 1) {
      QuestionNumber++;
    }
  }

  String GetQuestions() {
    return QuestionsList[QuestionNumber].QuestionString;
  }

  bool CorrectAnswer() {
    return QuestionsList[QuestionNumber].Answer;
  }

  bool isFinished() {
    if (QuestionNumber >= QuestionsList.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void Reset() {
    QuestionNumber = 0;
  }
}
