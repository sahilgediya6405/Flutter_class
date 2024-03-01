/* 13. Write a program to find the Max number from the given three
number using Nested If. */

import 'dart:io';

void main(){

    var num1,num2,num3;

    print("Enter value of number 1: ");
    num1 = int.parse(stdin.readLineSync()!);
    print("Enter value of number 2: ");
    num2 = int.parse(stdin.readLineSync()!);
    print("Enter value of number 3: ");
    num3 = int.parse(stdin.readLineSync()!);

   if(num1 > num2){
    if(num2 > num3){
        print("$num1 is MAX");
    }
   }else if(num2 > num3){
        print("$num2 is MAX");
   }else{
    print("$num3 is MAX");
   }
}