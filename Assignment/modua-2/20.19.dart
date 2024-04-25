/*
20.19

 1
2 3
4 5 6
7 8 9 10
11 12 13 14 15

*/

import 'dart:io';

void main() {
  var i = 1;
  stdout.write(" ");
  for (var r = 1; r <= 5; r++) {
    for (var c = 1; c <= r; c++) {
      stdout.write("$i");
      stdout.write(" ");
      i++;
    }
    print("");
  }
}
