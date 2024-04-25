//20.4 Write a program you have to find the factorial of given number

import 'dart:io';

void main() {
  var num, i;
  double fact = 1;

  print("Enetr number hear: ");
  num = int.parse(stdin.readLineSync()!);

  for (i = num; i >= 1; i--) {
    fact = fact * i;
  }

  print("Factorial is $fact");
}
