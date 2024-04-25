/*
20.15

    1
   21
  321
 4321
54321

*/

import 'dart:io';
void main(){
    var n=5;

    for(var r=1;r<=n;r++){
        for(var c=5;c>=r;c--){
            stdout.write(" ");
        }
        for(var k=r;k>=1;k--){
            stdout.write(k);
        }
        print("");
    }
    }
