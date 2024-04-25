// 12. Write a Program to check the given number is prime or not prime.

import 'dart:io';

void main() {
  var i, n;

  print("Enetr number to check prime or not : ");
  n = int.parse(stdin.readLineSync()!);

  for (i = 2; i <= n; i++) {
    if (n % i == 0) {
      print(" $n is Not-Prime number");
      break;
    } else {
      print("\n $n is prime number");
      break;
    }
  }
}
