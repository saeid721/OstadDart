<<<<<<< HEAD
// মডিউল ২ এর এসাইনমেন্ট
// You are given a list of integers representing the grades obtained by a student in
// various subjects: [85, 92, 78, 65, 88, 72].
// Write a Dart program to calculate the average grade of the student. After calculating
// the average, round it to the nearest integer. Determine if the student's average grade
// is greater than or equal to 70 print Passed. Print Failed otherwise
//
// Sample Output
// Student's average grade: 80.0
// Rounded average: 80
// Passed

import 'dart:io';

void main() {
  // Student's Subjects Grades List
  List<int> grades = [85, 92, 78, 65, 88, 72];

  int total = 0;
  for (int grade in grades) {
    total += grade;
  }

  double average = total / grades.length;

  // Student's Average Grade
  print("Student's average Grade: $average");

  // Student's Rounded Grade
  int roundAverage = average.round();
  print("Rounded average: $roundAverage");

  if (average >= 70) {
    print('Passed');
  } else {
    print('Failed');
  }
}
=======
// মডিউল ২ এর এসাইনমেন্ট
// You are given a list of integers representing the grades obtained by a student in
// various subjects: [85, 92, 78, 65, 88, 72].
// Write a Dart program to calculate the average grade of the student. After calculating
// the average, round it to the nearest integer. Determine if the student's average grade
// is greater than or equal to 70 print Passed. Print Failed otherwise
//
// Sample Output
// Student's average grade: 80.0
// Rounded average: 80
// Passed

import 'dart:io';

void main() {
  // Student's Subjects Grades List
  List<int> grades = [85, 92, 78, 65, 88, 72];

  int total = 0;
  for (int grade in grades) {
    total += grade;
  }

  double average = total / grades.length;

  // Student's Average Grade
  print("Student's average Grade: $average");

  // Student's Rounded Grade
  int roundAverage = average.round();
  print("Rounded average: $roundAverage");

  if (average >= 70) {
    print('Passed');
  } else {
    print('Failed');
  }
}
>>>>>>> dd09f1b (add new files)
