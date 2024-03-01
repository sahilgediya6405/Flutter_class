// 9. Write a Program to show swap of two No's without using third variable

import 'dart:io';

void main(){

    var a,b;

    print("Enetr value of a : ");
    a = int.parse(stdin.readLineSync()!);

    print("Enetr value of b :");
    b = int.parse(stdin.readLineSync()!);

    print("======= Before swaping value =======");

    print("value of a is : $a");
    print("value of b is : $b");

    a=a*b;
	b=a/b;
	a=a/b;

    print("===== After swaping value ========");

    print("value of a is : $a");
    print("value of b is : $b"); 

    }