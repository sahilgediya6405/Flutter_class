//20.9 Write a program make a summation of given number (E.g. 1523 ans:- 11)

import 'dart:io';

void main() {
  int num, digit, sum = 0;

  stdout.write("Enter a number: ");
  num = int.parse(stdin.readLineSync()!);

  while (num != 0) {
    digit = num % 10;
    sum += digit;
    num ~/= 10;
  }

  print("$sum");
}
