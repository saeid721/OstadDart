void main (){
  // Using static to track the Number of cars
  Car.numberOfCars = 0;

  Car car1 = Car(brand: "Toyota", model: 'Camry',year: 2016);
  car1.drive(1000);
  print('Car1: ${car1.getBrand()} ${car1.getModel()} ${car1.getYear()} Mile: ${car1.getMilesDriven()} Age:${car1.getAge()}');

  Car car2 = Car(brand: "Honda", model: 'Civic ', year: 2020);
  car2.drive(8000);
  print('Car2: ${car2.getBrand()} ${car2.getModel()} ${car2.getYear()} Mile: ${car2.getMilesDriven()} Age:${car2.getAge()}');

  Car car3 = Car(brand: "Ford", model: 'F-150', year: 2012);
  car3.drive(15000);
  print('Car3: ${car3.getBrand()} ${car3.getModel()} ${car3.getYear()} Mile: ${car3.getMilesDriven()} Age:${car3.getAge()}');
}

class Car{
  /// creating car class with the given properties.
  String brand;
  String  model;
  int year;
  double milesDriven = 0.0;

  Car({required this.brand, required this.model, required this.year});

  ///void returns nothing just calculate
  void drive(double miles){
    milesDriven += miles ;
  }

  double getMilesDriven(){
    return milesDriven;
  }

  String getBrand(){
    return brand;
  }

  String getModel(){
    return model;
  }

  int getYear(){
    return year;
  }

  int getAge(){
    return DateTime.now().year - year;
  }

  static int numberOfCars = 0;
}