import 'package:dart_application_1/dart_application_1.dart' as dart_application_1;
import 'dart:io';
import 'dart:math';
void main() {
  //https://hackmd.io/@kuzmapetrovich/S1x90jWGP#Exercise-4
  stdout.write("""
Website link: https://hackmd.io/@kuzmapetrovich/S1x90jWGP#Exercise-4
Exercise 1
Create a program that asks the user to enter their name and their age. Print out a message that tells how many years they have to be 100 years old.

Exercise 2
Ask the user for a number. Depending on whether the number is even or odd, print out an appropriate message to the user.

Exercise 3
Take a list, say for example this one:
a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89]
and write a program that prints out all the elements of the list that are less than 5.

Exercise 4
Create a program that asks the user for a number and then prints out a list of all the divisors of that number.
If you don’t know what a divisor is, it is a number that divides evenly into another number. For example, 13 is a divisor of 26 because 26 / 13 has no remainder.

Exercise 5
Take two lists, for example:
a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89]
b = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13]
and write a program that returns a list that contains only the elements that are common between them (without duplicates). Make sure your program works on two lists of different sizes.

Exercise 6
Ask the user for a string and print out whether this string is a palindrome or not.
A palindrome is a string that reads the same forwards and backwards.

Exercise 7
Let’s say you are given a list saved in a variable:
a = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100]. 
Write a Dart code that takes this list and makes a new list that has only the even elements of this list in it.

Exercise 8
Make a two-player Rock-Paper-Scissors game against computer.
Ask for player's input, compare them, print out a message to the winner.

Exercise 9
Generate a random number between 1 and 100. Ask the user to guess the number, then tell them whether they guessed too low, too high, or exactly right.
Keep track of how many guesses the user has taken, and when the game ends, print this out.

Exercise 10
Ask the user for a number and determine whether the number is prime or not.
Do it using a function

Exercise 11
Write a program that takes a list of numbers for example
a = [5, 10, 15, 20, 25]
and makes a new list of only the first and last elements of the given list. For practice, write this code inside a function.

Exercise 12
Write a program that asks the user how many Fibonnaci numbers to generate and then generates them. Take this opportunity to think about how you can use functions.
Make sure to ask the user to enter the number of numbers in the sequence to generate.

Exercise 13
Write a program (function) that takes a list and returns a new list that contains all the elements of the first list minus all the duplicates.

Exercise 14
Write a program (using functions!) that asks the user for a long string containing multiple words. Print back to the user the same string, except with the words in backwards order.
For example, say I type the string:
My name is Michele
Then I would see the string:
Michele is name My

--------------------------------------------------------------
|Chose number 1 for Exercise 1, 2 for Exercise 2 and so on...|
--------------------------------------------------------------\n""");
  int exerciseNumber = int.parse(stdin.readLineSync() ?? "");
  switch (exerciseNumber) {
    case 1:
      stdout.write('Enter your name:');
      String name = stdin.readLineSync() ?? "User";
      stdout.write('Hi $name can you enter your age:');
      int age = int.parse(stdin.readLineSync() ?? '');

      double yearsToHunderd = 100 - age.toDouble();
      stdout.write('$name, You have $yearsToHunderd years to be 100');

    case 2:
      stdout.write("Enter a random number:");
      int randomNumber = int.parse(stdin.readLineSync() ?? "");
      //Solution 1
      randomNumber % 2 == 0
          ? stdout.write("$randomNumber is a even number.")
          : stdout.write("$randomNumber is a odd number");
      //Solution
      if (randomNumber % 2 == 0) {
        stdout.write("$randomNumber is a even number.");
      } else {
        stdout.write("$randomNumber is a odd number");
      }

    case 3:
      List<int> a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
      for (int number in a) {
        number < 5 ? stdout.write(number) : stdout.write("");
      }
    
    case 4: 
      stdout.write("Please choose a number: ");
      double randomNumber = double.parse(stdin.readLineSync() ?? "");
      int divisor = (randomNumber / 2).toInt();
      List<int> divisors = [];
      while (divisor != 0) {
        int element = 0;
        randomNumber % divisor == 0 ? divisors.insert(element++, divisor) : "";
        divisor--;
      }

      for (int divisor in divisors) {
        print(divisor);
      }

    case 5:  
      var a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
      var b = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13];
      var commonNumbers = [];

      for (var number in a) {
        if (!commonNumbers.contains(number)) {
          b.contains(number) ? commonNumbers.add(number) : '';
        }
      }
      commonNumbers.forEach((number) => print(number));

    case 6:
      print("Enter a word: ");
      var word = stdin.readLineSync() ?? 'noon'.toLowerCase();
      isPalindrome(word);

    case 7:
      var a = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100];
      List<int> evenValuesList = splitTheEvenValues(a);
      print(evenValuesList);

    case 8:
      print('Write rps to play Rock, Paper, Scissors');
      var play = stdin.readLineSync();
      play == 'rps' ? rockPaperScissors() : '';

    case 9:
      print('Write r100 to play guess the number game');
      var play = stdin.readLineSync();
      play == "r100" ? guessTheNumber() : '';

    case 10:
      stdout.write("Check if the number is a prime number:");
      int number = int.parse(stdin.readLineSync() ?? "");
      isPrime(number);

    case 11: 
      List<int> a = [5, 10, 15, 20, 25];
      print(firstAndLastElementsFromAList(a));
      final random = Random();
      List<int> randList = List.generate(10, (_) => random.nextInt(100));
      print(randList);
      print(firstAndLastElementsFromAList(randList));  

    case 12:
      stdout.write("How many Fibonacci numbers do you want? ");
      int chosenNumber = int.parse(stdin.readLineSync() ?? '');
      List<int> result = fibonacciNumbers(chosenNumber);
      print(result);

    case 13:
      final random = Random();
      List<int> randList = List.generate(10, (_) => random.nextInt(10));
      print("Initial list is $randList\n");
      print("Cleaned list is ${removeDuplicates(randList)}");

    case 14:  
      stdout.write("Write a multiple words to print it backwards order: ");
      String multiWords = stdin.readLineSync().toString();
      print(toBackwardOrder(multiWords));

  }

  //Exercise 1
  /*stdout.write('Enter your name:');
  String name = stdin.readLineSync() ?? "User";
  stdout.write('Hi $name can you enter your age:');
  int age = int.parse(stdin.readLineSync() ?? '');

  double yearsToHunderd = 100 - age.toDouble();
  stdout.write('$name, You have $yearsToHunderd years to be 100');*/

  //Exercise 2
  /*stdout.write("Enter a random number:");
  int randomNumber = int.parse(stdin.readLineSync() ?? "");
  //Solution 1
  randomNumber%2 == 0 ? stdout.write("$randomNumber is a even number.") : stdout.write("$randomNumber is a odd number");
  //Solution 
  if(randomNumber%2 == 0){
    stdout.write("$randomNumber is a even number.");
  }
  else{
    stdout.write("$randomNumber is a odd number");
  }*/

  //Exercise 3
  /*List<int> a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  for(int number in a ){
    number<5 ? stdout.write(number) : stdout.write("");
  }*/

  //Exercise 4
  /*stdout.write("Please choose a number: ");
  double randomNumber = double.parse(stdin.readLineSync() ?? "");
  int divisor = (randomNumber/2).toInt();
  List <int> divisors =[];
  while(divisor != 0){
    int element = 0;
    randomNumber%divisor == 0 ? divisors.insert(element++,divisor) : "";
    divisor--;
  }

  for(int divisor in divisors){
    print(divisor);
  }*/

  //Exercise 5
  /*var a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  var b = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13];
  var commonNumbers = [];

  for(var number in a){
    if(!commonNumbers.contains(number)){
      b.contains(number) ? commonNumbers.add(number) : '' ;
    }
  }
  commonNumbers.forEach((number) => print(number));*/

  //Exercise 6
  /*print("Enter a word: ");
  var word = stdin.readLineSync() ?? 'noon' .toLowerCase();
  isPalindrome(word);*/

  //Exercise 7
  /*var a = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100];
  List<int> evenValuesList = splitTheEvenValues(a);
  print(evenValuesList);*/

  //Exercise 8
  /*print('Write rps to play Rock, Paper, Scissors');
  var play = stdin.readLineSync();
  play == 'rps' ? rockPaperScissors() : '';*/

  //Exercise 9
  /*print('Write r100 to play guess the number game');
  var play = stdin.readLineSync();
  play == "r100" ? guessTheNumber() : '' ;*/

  //Exercise 10
  /*stdout.write("Check if the number is a prime number:" );
  int number = int.parse(stdin.readLineSync() ?? "");
  isPrime(number);*/

  //Exercise 11
  /*List<int> a = [5, 10, 15, 20, 25];
  print(firstAndLastElementsFromAList(a));
  final random = Random();
  List<int> randList = List.generate(10, (_) => random.nextInt(100));
  print(randList);
  print(firstAndLastElementsFromAList(randList));*/

  //Exercise 12
  /*stdout.write("How many Fibonacci numbers do you want? ");
  int chosenNumber = int.parse(stdin.readLineSync() ?? '');
  List<int> result = fibonacciNumbers(chosenNumber);
  print(result);*/

  //Exercise 13
  /*final random = Random();
  List<int> randList = List.generate(10, (_) => random.nextInt(10));
  print("Initial list is $randList\n");
  print("Cleaned list is ${removeDuplicates(randList)}");*/

  //Exercise 14
  /*stdout.write("Write a multiple words to print it backwards order: ");
  String multiWords = stdin.readLineSync().toString();
  print(toBackwardOrder(multiWords));*/
}

isPalindrome(var word) {
  var revWord = word.split('').reversed.join('');
  word == revWord
      ? print("The word is palindrome")
      : print("The word is not a palindrome");
}

List<int> splitTheEvenValues(var list) {
  List<int> evenValuesList = [];
  for (var value in list) {
    value % 2 == 0 ? evenValuesList.add(value) : '';
  }
  return evenValuesList;
}

void rockPaperScissors() {
  print("Welcome to Rock, Paper, Scissors\nType 'exit' to stop the game");
  final random = Random();

  Map<String, String> rules = {
    "rock": "scissors",
    "scissors": "paper",
    "paper": "rock"
  };

  int userScore = 0;
  int computerScore = 0;
  List<String> options = ["rock", "scissor", "paper"];

  while (true) {
    String computerChoice = options[random.nextInt(options.length)];
    print("Choose between Rock Paper Scissor.");
    String userChoice = stdin.readLineSync().toString().toLowerCase();

    if (userChoice == 'exit') {
      print("\nYou: $userScore Computer:$computerScore\nBye Bye...");
      break;
    }
    if (userChoice == 'score') {
      print("\nYour Score: $userScore Computer Score:$computerScore\n");
      continue;
    }

    if (!options.contains(userChoice)) {
      print("Incorrect Option.");
      continue;
    } else if (computerChoice == userChoice) {
      print("We have a tie!");
    } else if (rules[computerChoice] == userChoice) {
      print("Computer wins: $computerChoice vs $userChoice");
      computerScore += 1;
    } else if (rules[userChoice] == computerChoice) {
      print("You win: $userChoice vs $computerChoice");
      userScore += 1;
    }
  }
}

void guessTheNumber() {
  print("\nWelcome to guess the number game.\nTo exit enter -1.");
  final random = Random();
  int randomNumber = random.nextInt(100);
  int attempts = 0;

  while (true) {
    stdout.write('Guess the number: ');
    int userGuessedNumber = int.parse(stdin.readLineSync() ?? '');

    if (userGuessedNumber == -1) {
      print("Attempts: $attempts Bye Bye...");
      break;
    }
    if (userGuessedNumber == randomNumber) {
      attempts++;
      if (attempts == 1) {
        print("Exactly right, You guessed the number from the first attempt.");
        break;
      } else if (attempts <= 10) {
        print("Score: high, You guessed the number with $attempts Attempts.");
        break;
      } else if (attempts > 10) {
        print("Score: low, You guessed the number with $attempts Attempts.");
        break;
      }
    }

    if (!(0 <= userGuessedNumber && userGuessedNumber <= 100)) {
      print("incorrect number.");
      continue;
    } else if (calculateDifference(randomNumber, userGuessedNumber) <= 10) {
      print("Hot.");
      attempts++;
      continue;
    } else if (calculateDifference(randomNumber, userGuessedNumber) <= 20) {
      print("Mild..");
      attempts++;
      continue;
    } else if (calculateDifference(randomNumber, userGuessedNumber) > 20) {
      print("Cool...");
      attempts++;
      continue;
    }
  }
}

int calculateDifference(int randomNumber, int userGuessedNumber) {
  if (randomNumber > userGuessedNumber) {
    return randomNumber - userGuessedNumber;
  } else {
    return userGuessedNumber - randomNumber;
  }
}

void isPrime(int number) {
  if (number == 0) {
    print("Zero is neither prime nor composite.");
  } else {
    int divisor = (number ~/ 2);
    int factors = 0;
    while (divisor != 0) {
      int element = 0;
      number % divisor == 0 ? factors++ : "";
      divisor--;
    }
    if (factors <= 2) {
      print("$number is a prime number.");
    } else {
      print("$number is not a prime number.");
    }
  }
}

List<int> firstAndLastElementsFromAList(List<int> list) {
  List<int> newList = [];
  newList.add(list.first);
  newList.add(list.last);
  return newList;
}

List<int> fibonacciNumbers(int chosenNumber) {
  List<int> fibList = [0, 1];

  for (var i = 0; i < chosenNumber; i++) {
    fibList.add(fibList[i] + fibList[i + 1]);
  }
  return fibList;
}

List<int> removeDuplicates(List<int> initialList) {
  return initialList.toSet().toList();
}

String toBackwardOrder(multiWords) {
  return multiWords.toString().split(" ").reversed.join(" ");
}
