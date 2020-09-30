/*
  Write a program that asks the user for two numbers, then it asks the user to
  input a number between 0 and 4.

  BONUS POINT: Specify what each number represents.

  Then, based on what the user inputs, calculate the results using the chosen
  math operator.

  0 -> print nbr1 + nbr2 = results
  1 -> etc
  2 -> etc
  3 -> etc
  4 -> etc

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
  print('Enter first number.');
  int nbr1 = int.parse(stdin.readLineSync());
  print('Enter second number.');
  int nbr2 = int.parse(stdin.readLineSync());

  print('Choose an operation');
  print('[0]: Add');
  print('[1]: Subtract');
  print('[2]: Multiply');
  print('[3]: Divide');
  print('[4]: Modulo');
  int choice = int.parse(stdin.readLineSync());
  double result;
  if (choice == 0) {
    result = (nbr1 + nbr2).toDouble();
    print('$nbr1 + $nbr2 = ${nbr1 + nbr2}');
  } else if (choice == 1) {
    result = (nbr1 - nbr2).toDouble();
    print('$nbr1 - $nbr2 = ${nbr1 - nbr2}');
  } else if (choice == 2) {
    result = (nbr1 * nbr2).toDouble();
    print('$nbr1 * $nbr2 = ${nbr1 * nbr2}');
  } else if (choice == 3) {
    result = (nbr1 / nbr2).toDouble();
    print('$nbr1 / $nbr2 = ${nbr1 / nbr2}');
  } else if (choice == 4) {
    result = (nbr1 % nbr2).toDouble();
    print('$nbr1 % $nbr2 = ${nbr1 % nbr2}');
  } else {
    print('Unknown choice entered.');
  }

  bool isEven = result.toInt().isEven;
  if(isEven) {
    print('The result is $result and its even!');
  } else {
    print('The result is $result and its odd!');
  }

}