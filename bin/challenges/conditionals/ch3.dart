/*
  Copy the code from ch1 and ch2 so that you have a program that asks for two
  numbers, then an operation.

  Then, based on what the user inputs, calculate the results using the chosen
  math operator.

  0 -> print nbr1 + nbr2 = results
  1 -> etc
  2 -> etc
  3 -> etc
  4 -> etc

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

  if(number == 0)
  {
    print(user + user1);

  }else if(number == 1)
  {
    print(user - user1);
  } else if(number == 2)
  {
    print(user * user1);
  }else if(number == 3)
  {
    print(user / user1);
  } else if(number == 4)
  {
    print(user % user1);
  }else{
    print('Try again');
  }



}