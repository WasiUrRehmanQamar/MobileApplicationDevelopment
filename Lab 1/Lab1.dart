import 'dart:math';

void main() {
  
  /// Q1 : Add two numbers and print the result
  
  int Number1 = 11;
  int Number2 = 30;
  int Number3 = Number1 + Number2;
  
  print("Sum of Two Number 11 and 30 is : $Number3");
  
  /// Q2 : Initialize two nullable variables
  
  int? NullNumber1 = null;
  int? NullNumber2 = null;
  
  print("Nullable Variable 1 Is : $NullNumber1");
  print("Nullable variable 2 Is : $NullNumber2");
  
  /// Display the random number between 1 to 100
  
  Random random = new Random();
  int RandomNumber;
  RandomNumber = random.nextInt(99)+1;
  print("The Generated Random Number Between 1 and 100 Is : $RandomNumber");
  
}
