/* 20.5 Write a program you have to print the Fibonacci series up to user given
number */

import 'dart:io';

void main() {
  var num, i, c;
  int a = 0, b = 1;

  print("Eeter your number:");
  num = int.parse(stdin.readLineSync()!);

  print("$a");
  print("$b");

  for (i = 3; i <= num; i++) {
    c = a + b;
    print("$c");
    a = b;
    b = c;
  }
}
