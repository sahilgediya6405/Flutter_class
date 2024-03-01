//6. Write a program to find the simple Interest.

import 'dart:io';
void main(){
    var p,r,t,s_i;

    print("Enter principal amount hear : ");
    p = int.parse(stdin.readLineSync()!);

    print("Enter reat of intrest hear : ");
    r = int.parse(stdin.readLineSync()!);

    print("Enter time (number of year) hear : ");
    t = int.parse(stdin.readLineSync()!);

    s_i=p*r*t/100;
    print("Simpal Interest is $s_i");
}