/* 20.8 Write a program to find out the max from given number (E.g. No:- 1562 Max 
number is 6 */
import 'dart:io';

void main() {
  int num, digit, maxDigit = -1;

  // Get user input
  stdout.write("Enter a number: ");
  num = int.parse(stdin.readLineSync()!);

  if (num < 0) {
    num = -num;
  }

  while (num > 0) {
    digit = num % 10;
    if (digit > maxDigit) {
      maxDigit = digit;
    }
    num ~/= 10;
  }

  print("max digit is : $maxDigit");
}
