/* 7. Write a program to convert temperature from degree centigrade to 
Fahrenheit. */

import 'dart:io';

void main(){
var f,c;

print("Enetr Celsius hear : ");
c = int.parse(stdin.readLineSync()!);

f=(c*9/5)+32;

print("Fahrenheit is $f");

}