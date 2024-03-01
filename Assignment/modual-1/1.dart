/* 1. Display This Information using print
•Your Name
•Your Birth date
•Your Age
•Your Address */

import 'dart:io';

void main(){
    var name;
    var bod;
    var age;
    var address;

    print("Enetr your name hear = ");
    name = stdin.readLineSync()!;

    print("Enter your birth date hear = ");
    bod = stdin.readLineSync()!;

    print("Enter your age hear = ");
    age = int.parse(stdin.readLineSync()!);

    print("Enter your Address hear = ");
    address = stdin.readLineSync()!;

    print("Your name is $name");
    print("Your birth of date is $bod");
    print("Your age is $age");
    print("Your address is $address");

}