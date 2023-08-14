// importing dart:io file
import 'dart:io';

void main() {
  var saeid = [
    {'userId': 1, 'result': 85},
    {'userId': 2, 'result': 92},
    {'userId': 3, 'result': 78},
    {'userId': 4, 'result': 65},
    {'userId': 4, 'result': 88},
    {'userId': 4, 'result': 72}
  ];

  var result = saeid.map((m) => m['result']!).average;

  print(result); // prints 3.75
}