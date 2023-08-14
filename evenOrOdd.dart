<<<<<<< HEAD
import 'dart:io';

void main() {
  int a = 0;
  String? userInput = stdin.readLineSync();
  int num = int.parse(userInput!);
 if (num % 2 == 0) {
    print("$num is an even number");
  } else {
    print("$num is an odd number");
  }
=======
import 'dart:io';

void main() {
  int a = 0;
  String? userInput = stdin.readLineSync();
  int num = int.parse(userInput!);
 if (num % 2 == 0) {
    print("$num is an even number");
  } else {
    print("$num is an odd number");
  }
>>>>>>> dd09f1b (add new files)
}