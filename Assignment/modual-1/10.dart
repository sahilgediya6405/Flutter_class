//10. Write a Program to check the given number is Positive, Negative.

import 'dart:io';

void main(){

    var num1;

    print("Enter number of num1 : ");
    num1 = int.parse(stdin.readLineSync()!);

   (num1 < 0)? print("This is nagativ number."):print("This is positive number.");


}