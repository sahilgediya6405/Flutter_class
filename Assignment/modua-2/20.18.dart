/*
20.18

    1
   2 2
  3 3 3
 4 4 4 4
5 5 5 5 5

*/
import 'dart:io';

void main() {
  var i = 1;

  for (var r = 1; r <= 5; r++) {
    for (var c = 5; c >= r; c--) {
      stdout.write(" ");
    }
    for (var k = 1; k <= r; k++) {
      stdout.write("$i");
      stdout.write(" ");
    }
    i++;
    print("");
  }
}
