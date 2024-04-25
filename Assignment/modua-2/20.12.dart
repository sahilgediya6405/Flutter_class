/*
20.12

1                         
12
123
1234
12345
*/

import 'dart:io';

void main(){
    var r,c,p=1;

    for(r=1;r<=5;r++){
        for(c=1;c<=r;c++){
            stdout.write("$p");
             p++;
        }
        p=1;
        print("");
        


    }

}