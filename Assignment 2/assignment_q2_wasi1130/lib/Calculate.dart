// ignore_for_file: file_names, avoid_print, non_constant_identifier_names

import 'dart:math';

class Calculate {
  final int Height;
  final int Weight;
  double _BMI = 0;

  Calculate({required this.Height, required this.Weight});

  String BMI() {
    _BMI = (Weight / pow(Height / 100, 2));
    print(_BMI.toStringAsFixed(1));
    return _BMI.toStringAsFixed(1);
  }

  String Status() {
    if (_BMI >= 25) {
      print('OverWeight');
      return 'OverWeight';
    } else if (_BMI >= 18.5) {
      print('Normal');
      return 'Normal';
    } else {
      print('UnderWeight');
      return 'UnderWeight';
    }
  }

  String Precaution() {
    if (_BMI >= 25) {
      print(
          'You have a higher than a normal body Weight. Try to exercise more');
      return 'You have a higher than a normal body Weight. Try to exercise more';
    } else if (_BMI >= 18.5) {
      print('You have a normal body Weight. Good job!');
      return 'You have a normal body Weight. Good job!';
    } else {
      print(
          'You have a lower than a normal body Weight. You can eat a bit more');
      return 'You have a lower than a normal body Weight. You can eat a bit more';
    }
  }
}
