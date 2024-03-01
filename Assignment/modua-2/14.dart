/* 14. Write a program to find the Max number from the given three 
number using Ternary Operator */

import 'dart:io';

void main(){

    var num1,num2,num3;

    print("Enter value of number 1: ");
    num1 = int.parse(stdin.readLineSync()!);
    print("Enter value of number 2: ");
    num2 = int.parse(stdin.readLineSync()!);
    print("Enter value of number 3: ");
    num3 = int.parse(stdin.readLineSync()!);

    (num1 > num2):(num1 > num3 ? print("$num1 is MAX") ) (num2 > num3 ? print("$num2 is MAX")) : print("$num3 is MAX");

(num1 > num2)?print("number 1 is big"): print("number 2 is big");


}