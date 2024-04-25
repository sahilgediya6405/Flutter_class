/*
20.13

1
22
333
4444
55555

*/

import 'dart:io';

void main(){
    var n=1;
    for(var r=1;r<=5;r++){
        for(var c=1;c<=r;c++){
            stdout.write("$n");
        }
        n++;
        print("");
    }
}