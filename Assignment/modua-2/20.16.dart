/*
20.16

    *
   * *
  * * *
 * * * *
* * * * *

*/
import 'dart:io';

void main() {
  for (var r = 1; r <= 5; r++) {
    for (var c = 5; c >= r; c--) {
      stdout.write(" ");
    }
    for (var k = 1; k <= r; k++) {
      stdout.write('*');
      stdout.write(' ');
    }
    print("");
  }
}
