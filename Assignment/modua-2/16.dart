/* 16. Write a program user enter the 5 subjects mark.
 You have to make a total and find the percentage.
  percentage > 75 you have to print “Distinction” 
  percentage > 60 and percentage <= 75 you have to print “First class” 
  percentage >50 and percentage <= 60 you have to print “Second class” 
  percentage > 35 and percentage <= 50 you have to print“Pass class” 
  Otherwise print “Fail” */

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



 if(par > 75){
            print("Distinction!!!");
        }else if(par > 60 && par <= 75){
            print("Firat Class!!!");
        }else if(par > 50 && par <= 60){
            print("Second Class!!!");
        }else if(par >35 && par <=50){
            print("Pass Class!!!");
        }else {
            print("Fail!!!!");
        } 
}
    
        

