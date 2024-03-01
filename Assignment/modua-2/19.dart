/* 19. Write a program of to find out the Area of Triangle, Rectangle and 
Circle using If Condition.(Must Be Menu Driven) */

import 'dart:io';

void main(){
    
    print("======Choice Any One========");
    print("1) Area of Triangle");
    print("2) Area of Rectangle");
    print("3) Area of Circle");

    print("Enter Choice value hear: ");
    var ch = int.parse(stdin.readLineSync()!);

    if(ch==1){
        var b,h,area;

        print("Enetr Base of triangle: ");
        b = int.parse(stdin.readLineSync()!);

        print("Enetr Height of triangle: ");
        h = int.parse(stdin.readLineSync()!);

        area = 1/2*b*h;

        print("Area of Triangle is $area");

    }else if(ch==2){
        var lenght,width,area;

        print("Enetr Lenght of Rectangle: ");
        lenght = int.parse(stdin.readLineSync()!);

        print("Enetr Width of Rectangle: ");
        width = int.parse(stdin.readLineSync()!);

        area=lenght*width;

        print("Area of Rectangle is $area");
 
    }else if(ch==3){
        var redius,area;

        print("Enetr Redius of Circal: ");
        redius = int.parse(stdin.readLineSync()!);

        area=2*3.14*redius;
        print("Area of Circal is $area");

    }else{
        print("Invelid Input!!!");
    }

    
}