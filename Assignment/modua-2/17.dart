//17. Write Program use switch statement. Display Monday to Sunday

import "dart:io";

void main(){
    var days;

    print("Enetr days(any 1-7) : ");
    days = int.parse(stdin.readLineSync()!);

    switch(days){
        case 1:
        print("Monday");
        break;

        case 2:
        print("Tuseday");
        break;

        case 3:
        print("Wednesday");
        break;

        case 4:
        print("Tursday");
        break;

        case 5:
        print("Friday");
        break;

        case 6:
        print("Saturday");
        break;

        case 7:
        print("sunday");
        break;

        default:
        print("Invelid Input !!!");
    }
    
}