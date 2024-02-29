/* 8. Write a program to calculate sum of 5 subjects & find the 
percentage. Subject marks entered byuser */

import 'dart:io';

void main(){
var sub1,sub2,sub3,sub4,sub5,sum,par;

print("Enter sub1  mark hear : ");
sub1 = int.parse(stdin.readLineSync()!);

print("Enter sub2 mark hear : ");
sub2 = int.parse(stdin.readLineSync()!);

print("Enter sub3 mark hear : ");
sub3 = int.parse(stdin.readLineSync()!);

print("Enter sub4 mark hear : ");
sub4 = int.parse(stdin.readLineSync()!);

print("Enter sub5 mark hear : ");
sub5 = int.parse(stdin.readLineSync()!);


sum=sub1+sub2+sub3+sub3+sub4+sub5;
print("Sum of 5 subject is $sum");

par = sum * 100 / 500;

print("Percentage of 5 subject is $par %");


}
