/* 18. Write a Program of Addition, Subtraction ,Multiplication and 
Division using Switch case.(Must Be Menu Driven) */

import 'dart:io';

void main(){

    var num1,num2,ch,total;

    print("Enter value of num1 : ");
    num1 = int.parse(stdin.readLineSync()!);

    print("Enter value of num2 : ");
    num2 = int.parse(stdin.readLineSync()!);

    print("======Choice Any One======");
    print("1) Addition");
    print("2) Subtraction");
    print("3) Multiplication");
    print("4) Division");

    print("Enter Choice value hear: ");
    ch = int.parse(stdin.readLineSync()!);
    
    switch(ch){
        case 1:
        total=num1+num2;
        print("Addition of $num1 and $num2 is $total");
        break;

        case 2:
        total=num1-num2;
        print("Subtraction of $num1 and $num2 is $total");
        break;

        case 3:
        total=num1*num2;
        print("Multiplication of $num1 and $num2 is $total");
        break;

        case 4:
        total=num1/num2;
        print("Division of $num1 and $num2 is $total");
        break;
    }
}