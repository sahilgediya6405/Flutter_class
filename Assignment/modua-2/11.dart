// 11. Write a Program to check the given year is leap year or not

import 'dart:io';

void main(){
    var year;

    print("Enter year to check leap or not : ");
    year = int.parse(stdin.readLineSync()!);

    if (year % 4 == 0){
        print("$year is leap year.");
    }else{
        print("$year is not a leap year");
    }
}   