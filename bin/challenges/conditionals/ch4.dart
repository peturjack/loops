/*
  Copy the code from ch3.

  After the operation is done (make sure to save the result to a variable!)
  Check if the number is odd or even, print the information for the user

  HINT: The divide operation will return a double, luckily, you can store any
        integer within a double, provided you convert the integer to a double :)
        Example:
          int testVar = 10;
          int testVarAgain = 20;
          double someVar;
          someVar = testVar.toDouble();  // <-- I converted testVar to double!
          someVar = (testVar + testVarAgain).toDouble(); // <-- Same thing!

  HINT: Create the variable outside the if conditions, then assign the result
        of the operations to it.

  HINT: You can't check if a double is even or not, but, when you convert a
        double to integer, it will simply drop it's decimal points. For example

        double someVar = 10.5;
        double someInt = someVar.toInt() // someInt will be 10, so we can
                                         // actually check if 10 is even or not.
 */
import 'dart:io';

void main() {

  print('Enter a number');
  int user = int.parse(stdin.readLineSync());

  print('Enter another number :)');
  int user1 = int.parse(stdin.readLineSync());

  print('''Enter a number between 0 and 4
  0 = ${user} + ${user1}
  1 = ${user} - ${user1}
  2 = ${user} * ${user1}
  3 = ${user} / ${user1}
  4 = ${user} % ${user1}''');

  int number = int.parse(stdin.readLineSync());



  if(number == 0 )
  {
    int results = (user + user1);
    print(results);
    if(results.isOdd){
      print('This number is odd');
    }else if(results.isEven){
      print('This number is even');
    }

  }else if(number == 1)
  {
    int results = (user - user1);
    print(results);
    if(results.isOdd){
      print('This number is odd');
    }else if(results.isEven){
      print('This number is even');
    }



  } else if(number == 2)
  {
    int results = (user * user1);
    print(results);
    if(results.isOdd){
      print('This number is odd');
    }else if(results.isEven){
      print('This number is even');
    }
  }else if(number == 3)
  {
    double results = (user.toInt() / user1.toInt());
    print(results);
    if(results.toInt() != null){
      print('This number is odd');
    }else if(results.toInt() != null){
      print('This number is even');
    }
  } else if(number == 4)
  {
    int results =(user % user1);
    print(results);
  }
  else{
    print('Try again');
}


}