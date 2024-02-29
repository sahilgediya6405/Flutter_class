/* 2. Write a program to make addition, Subtraction, Multiplication and 
Division of Two Numbers */

import 'dart:io';

void main(){
var num1,num2,total;

print("Enter your number hear : ");
num1 = int.parse(stdin.readLineSync()!);
print("Enter your number hear : ");
num2 = int.parse(stdin.readLineSync()!);    

total = num1 + num2;
print("total of $num1 + $num2 = $total");

total = num1 - num2;
print("total of $num1 - $num2 = $total");

total = num1 * num2;
print("total of $num1 * $num2 = $total");

total = num1 / num2;
print("total of $num1 / $num2 = $total");

    
}