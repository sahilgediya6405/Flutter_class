// 5. Write a program to find the Area of Triangle

import 'dart:io';

void main(){
    var base_,height,area;

    print("Enetr base of triangle : ");
    base_ = int.parse(stdin.readLineSync()!);

    print("Enter height of triangle : ");
    height = int.parse(stdin.readLineSync()!);

    area = 1/2*base_*height;

    print("Area of triangle is $area");

}