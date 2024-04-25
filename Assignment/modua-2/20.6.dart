//20.6 Write a program you have to print the table of given number


import 'dart:io';

void main(){
    var num,a;

    print("Enter Number:");
    num = int.parse(stdin.readLineSync()!);

    for(var i=0;i<=10;i++){
        a=num*i;
        print("$num * $i = $a");
    }
}

