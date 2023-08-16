import 'dart:io';

void main (){
  String? userString = stdin.readLineSync();

  if(userString!= null){

    List<String> vowels = ['a','e','i','o','u'];
    int vowelCount = 0;
    for (var letter in userString.toLowerCase().split('')){
      if ( vowels.contains(letter) ){
        vowelCount++;

      }
    }
    if(vowelCount!=0){
      print('The string contains a vowel.');
    }else{
      print('The string does not contain any vowel.');
    }
  }
}