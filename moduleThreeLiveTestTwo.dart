import 'dart:io';

class Person {
  String name;
  int age ;
  String address;
  Person(this.name,this.age,this.address);

  void sayHello(){
    print('Hello, my name is $name');
  }

  int getAgeInMonths(){
    return 12*age;
  }
}

void main (){
  String name ='Saeid'; //Assigning name

  int age = 30;//assigning age

  String address ='Shyamoli, Dhaka'; //assigning address

  Person person = Person(name, age, address);

  person.sayHello();
  int ageInMonths = person.getAgeInMonths();

  print('Age in months:$ageInMonths');
}