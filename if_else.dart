
//this program for exam result using if, else if, & else statement

void main(){
 int marks = 90;

  if (marks>=80 && marks<=100){
    print("The result is A+");
  } else if (marks>=70 && marks<80){
    print("The result is A");
  } else if (marks>=60 && marks<70){
    print("Thee result is A-");
  } else if (marks>=50 && marks<60){
    print("The result is B");
  } else if (marks>=40 && marks<50){
    print("The result is C");
  }else if (marks>=33 && marks<40){
    print("The result is D");
  } else{
    print("The result is F");
  }


  /*if (marks<=80 && marks<=100){
    print("The result is A+");
  } else if (marks<80 && marks>=70){
    print("The result is A");
  } else if (marks<70 && marks>=60){
    print("Thee result is A-");
  } else if (marks<60 && marks>=50){
    print("The result is B");
  } else if (marks<50 && marks>=40){
    print("The result is C");
  }else if (marks<40 && marks>=33){
    print("The result is D");
  } else if (marks>100){
    print("You type the invalid value, Please type the valid value");
  }
  else{
    print("The result is F");
  }
*/

}