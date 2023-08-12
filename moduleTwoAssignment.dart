import 'dart:io';

void main() {
  List<int> grades = [85, 92, 78, 65, 88, 72];

  int total = 0;
  for (int grade in grades) {
    total += grade;
  }

  double average = total / grades.length;

  print("Student's average grade: $average");

  int roundAverage = average.round();
  print("Rounded average: $roundAverage");

  if (average >= 70) {
    print('Passed');
  } else {
    print('Failed');
  }
}
