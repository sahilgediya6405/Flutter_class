// 20.7 Write a program to print the number in reverse order.

import 'dart:io';

void main(){

    var i,a;

    print("Enter your number:");
    a = int.parse(stdin.readLineSync()!);

    for(i=a;i>=0;i--){
        print("$i");
    }



}