import 'dart:io';

void main (){
  String? userInput = stdin.readLineSync();
  if (userInput != null){
    List<String> numbersAsString = userInput.split('');
    int a = int.parse(numbersAsString[0]);
    int b = int.parse(numbersAsString[1]);
    int sum = a + b;
    print(sum);
  }


// int a = int.parse(stdin.readLineSync()!);
  // int b = int.parse(stdin.readLineSync()!);
  // print(a + b);

}