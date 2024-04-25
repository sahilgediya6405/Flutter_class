/*
20.20

1
0 1
1 0 1
0 1 0 1
1 0 1 0 1

*/

import 'dart:io';

void main() {
  var i = 0;

  for (var r = 1; r <= 5; r++) {
    for (var c = 1; c <= r; c++) {
      stdout.write("$i ");
      i++;
    }
    i = 0;
    print("");
  }
}
