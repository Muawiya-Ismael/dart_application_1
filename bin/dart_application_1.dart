import 'dart:ffi';

import 'package:dart_application_1/dart_application_1.dart' as dart_application_1;
import 'dart:io';
import 'dart:math';
import 'dart:convert';

void main() {
  stdout.write("""
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

Exercise 15
Write a password generator in Dart. Be creative with how you generate passwords - strong passwords have a mix of lowercase letters, uppercase letters, numbers, and symbols.
The passwords should be random, generating a new password every time the user asks for a new password. Include your run-time code in a main method.
Ask the user how strong they want their password to be. For weak passwords, pick a word or two from a list.
:exclamation: Do not use the generated password in your real accounts. Use 1password.

Exercise 16
Create a program that will play the “cows and bulls” game with the user. The game works like this:
Randomly generate a 4-digit number. Ask the user to guess a 4-digit number. For every digit the user guessed correctly in the correct place, they have a “cow”.
For every digit the user guessed correctly in the wrong place is a “bull.”
Every time the user makes a guess, tell them how many “cows” and “bulls” they have. Once the user guesses the correct number, the game is over.
Keep track of the number of guesses the user makes throughout the game and tell the user at the end.

Exercise 17
Time for some fake graphics! Let’s say we want to draw game boards that look like this:
 --- --- --- 
|   |   |   | 
 --- --- ---  
|   |   |   | 
 --- --- ---  
|   |   |   | 
 --- --- --- 
This one is 3x3 (like in tic tac toe).
Ask the user what size game board they want to draw, and draw it for them to the screen using Dart’s print statement.

Exercise 18
As you may have guessed, we are trying to build up to a full tic-tac-toe board.
For now, we will simply focus on checking whether someone has WON the game, not worrying about how the moves were made.
If a game of Tic Tac Toe is represented as a list of lists, like so:
game = [[1, 2, 0],
        [2, 1, 0],
        [2, 1, 1]]
where a 0 means an empty square, a 1 means that player 1 put their token in that space, and a 2 means that player 2 put their token in that space.
Your task: given a 3 by 3 list of lists that represents a Tic Tac Toe game board, tell whether anyone has won, and tell which player won, if any.
A Tic Tac Toe win is 3 in a row - either in a row, a column, or a diagonal. Don’t worry about the case where TWO people have won - assume that in every board there will only be one winner.

Exercise 19
In a previous exercise we explored the idea of using a list of lists as a “data structure” to store information about a tic tac toe game.
In a tic tac toe game, the “game server” needs to know where the Xs and Os are in the board, to know whether player 1 or player 2 (or whoever is X and O) won.
There has also been an exercise (17) about drawing the actual tic tac toe gameboard using text characters.
The next logical step is to deal with handling user input. When a player (say player 1, who is X) wants to place an X on the screen, they can’t just click on a terminal.
So you are going to approximate this clicking simply by asking the user for a coordinate of where they want to place their piece.

Exercise 20
In 3 previous exercises, we built up a few components needed to build a Tic Tac Toe game in Dart:
Draw the Tic Tac Toe game board
Checking whether a game board has a winner
Handle a player move from user input
The next step is to put all these three components together to make a two-player Tic Tac Toe game!
Your challenge in this exercise is to use the functions from those previous exercises all together in the same program to make a two-player game that you can play with a friend.
There are a lot of choices you will have to make when completing this exercise, so you can go as far or as little as you want with it.
Here are a few things to keep in mind:
You should keep track of who won - if there is a winner, show a congratulatory message on the screen.
If there are no more moves left, don’t ask for the next player’s move!
:notes: Keep in mind, the current solution is not just a copy pase of functions from the previous exercises, but rather a rework of them.

Exercise 21
You, the user, will have in your head a number between 0 and 100.
The program will guess a number, and you, the user, will say whether it is too high, too low, or your number.
At the end of this exchange, your program should print out how many guesses it took to get your number.

Exercise 22
Implement a function that takes as input three variables, and returns the largest of the three. Do this without using the Dart max() function!
The goal of this exercise is to think about some internals that Dart normally takes care of for us. All you need is some variables and if statements!

Exercise 23
In this exercise, the task is to write a function that picks a random word from a list of words from the SOWPODS dictionary.
Download this file and save it in the same directory as your Dart code. Each line in the file contains a single word.
Use the Dart random library for picking a random word.

Exercise 24
In the game of Hangman, a clue word is given by the program that the player has to guess, letter by letter. The player guesses one letter at a time until the entire word has been guessed. (In the actual game, the player can only guess 6 letters incorrectly before losing).
Let’s say the word the player has to guess is EVAPORATE.
For this exercise:
Write the logic that asks a player to guess a letter and displays letters in the clue word that were guessed correctly.
For now, let the player guess an infinite number of times until they get the entire word.
As a bonus, keep track of the letters the player guessed and display a different message if the player tries to guess that letter again.
Remember to stop the game when all the letters have been guessed correctly! Don’t worry about choosing a word randomly or keeping track of the number of guesses the player has remaining - we will deal with those in a future exercise.

Exercise 25
In this exercise, we will finish building Hangman. In the game of Hangman, the player only has 6 incorrect guesses (head, body, 2 legs, and 2 arms) before they lose the game.
In Part 1, we loaded a random word list and picked a word from it.
In Part 2, we wrote a logic for guessing the letter and displaying that information to user.
In this exercise, we have to put it all together and add logic for handling guesses.
Copy your code from Parts 1 and 2 into a new file as a starting point. Now add the following features:
Only let the user guess 6 times, and tell the user how many guesses they have left.
Keep track of the letters user guessed. If the user guesses a letter they had already guessed, don’t penalize them - let them guess again.
Optional additions:
When the player wins or loses, let them start a new game.
Rather than telling the user "You have 4 incorrect guesses left", display some picture art for the Hangman. This is challenging - do the other parts of the exercise first!
Your solution will be a lot cleaner if you make use of functions to help you!

Exercise 26
For this exercise, we will keep track of when our friend’s birthdays are, and be able to find that information based on their name.
Create a dictionary (in your file) of names and birthdays.
When you run your program it should ask the user to enter a name, and return the birthday of that person back to them.
The interaction should look something like this:
>>> Welcome to the birthday dictionary. We know the birthdays of:
Albert Einstein
Benjamin Franklin
Ada Lovelace
>>> Who's birthday do you want to look up?
Benjamin Franklin
>>> Benjamin Franklin's birthday is 01/17/1706.

Exercise 27
In the previous exercise we created a dictionary of famous scientists’ birthdays.

In this exercise, modify your program from Part 1 to load the birthday dictionary from a JSON file on disk, rather than having the dictionary defined in the program.
Bonus:
Ask the user for another scientist’s name and birthday to add to the dictionary, and update the JSON file you have on disk with the scientist’s name.
If you run the program multiple times and keep adding new names, your JSON file should keep getting bigger and bigger.

Exercise 28
In the previous exercise we saved information about famous scientists’ names and birthdays to disk.
In this exercise, load that JSON file from disk, extract the months of all the birthdays, and count how many scientists have a birthday in each month.
Your program should output something like:
{
    "May": 3,
    "November": 2,
    "December": 1
}

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
      print("Initial list is $randList");
      print("Cleaned list is ${removeDuplicates(randList)}");

    case 14:  
      stdout.write("Write a multiple words to print it backwards order: ");
      String multiWords = stdin.readLineSync().toString();
      print(toBackwardOrder(multiWords));

    case 15:
      stdout.write("How strong a password do you want? Weak, Medium or Strong: ");
      String choice = stdin.readLineSync().toString().toLowerCase();
      passwordGenerator(choice);
    
    case 16:
      cowsANDbulls();

    case 17:
      stdout.write("What square size do you want: ");
      int userChoice = int.parse(stdin.readLineSync() ?? '');
      print("Here is a $userChoice by $userChoice board: \n");
      drawBoard(userChoice);

    case 18:
      print("where a 0 means an empty square, a 1 means that player 1 put their token in that space, and a 2 means that player 2 put their token in that space.");
      theGame(getUserInputBoard());
    
    case 19:
      List<List<String>> initialBoard =
      List.generate(3, (_) => List.generate(3, (_) => ' '));
      drawXOBoard(initialBoard, 2);
    
    case 20:
      List<List<String>> theBoard =List.generate(3, (_) => List.generate(3, (_) => ' '));
      startGame(theBoard);

      int a = 1, user = 2, tmp;

      while (true) {
        tmp = a;
        a = user;
        user = tmp;
        currentBoard(theBoard);

        // Ask for coordinates
        stdout.write("Please User $user, choose a coordinate: ");
        List userChoice = stdin.readLineSync().toString().split(" ");
        if (userChoice.join(" ") == "exit") {
          print("\nGame quitted in the following state: ");
          break;
        }

        theBoard = makeMove(theBoard, user, userChoice);

        if (rowCheckXO(theBoard)) {
          print("\nUser $user: Row win!");
          break;
        } else if (rowCheckXO(transposeXO(theBoard))) {
          print("\nUser $user: Column win!");
          break;
        } else if (rowCheckXO(diagonalsXO(theBoard))) {
          print("\nUser $user: Diagonal win!");
          break;
        } else if (drawGameXO(theBoard) == 1) {
          print("\nThe game ended in draw!");
          break;
        }
      }
      currentBoard(theBoard);

    case 21:
      compGuess();
    
    case 22:
      var max;
      int a = 32;
      int b = 12;
      int c = 64;

      if (a > b) {
        max = a;
      } else {
        max = b;
      }

      if (c > max) {
        max = c;
      }
      print(max);

      List l = [a, b, c, 4, 5, 2, 1];
      l.sort();
      print(l.last);

    case 23:
      print(Directory.current.path);
      String word = randomWord("data/sowpods.txt");
      print(word);

    case 24:
      String word = randomWord("data/sowpods.txt");
      hangman(word);

    case 25:
      String word = randomWord("data/sowpods.txt");
      hangman2(word);

    case 26:
      Map<String, String> birthdays =  {
        "Albert Einstein": "14/03/1879",
        "Benjamin Franklin": "17/01/1706",
        "Ada Lovlace": "10/12/1815",
      };

      print("\nHello there!. We know the birthdays of the following people: \n");

      birthdays.forEach((key, value) {
        print(key);
      });

      stdout.write("\nWho's birthday do you want to know? \nif you want to add new one write new.\n");
      String choice = stdin.readLineSync().toString();
      
      switch (choice) {
      case 'new':
        stdout.write("Write the name: ");
        String name = stdin.readLineSync().toString();
        stdout.write("Write birth date: ");
        String birthDate = stdin.readLineSync().toString();
        birthdays[name] = birthDate;
        saveBirthdaysToFile(birthdays);
        print("\nAdded $name's birthday to the list.\n");
        break;

      default:
        if (birthdays.containsKey(choice)) {
          print("\n$choice's birthday is ${birthdays[choice]}\n");
        } else {
          print("\nSorry, we don't have birthday information for $choice.\n");
        }
        break;
      }
    
    case 27:

    case 28:

    
    default:
      print("Incorrect input, plz enter exercise number from 1 to 28.");
  }
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

void passwordGenerator(String choice){
  if (choice == "weak") {
    shuffleGenerator(5);
  } else if (choice == "medium") {
    shuffleGenerator(15);
  } else if (choice == "strong") {
    shuffleGenerator(25);
  } else {
    print("Incorrect word is given");
  }
}

void shuffleGenerator(int strength) {
  final random = Random.secure();
  List<int> intList = List.generate(strength, (_) => random.nextInt(255));
  List charList = base64UrlEncode(intList).split('').toList();
  charList.shuffle();
  print("\nYour password is: ${charList.join('')}\n");
}

void cowsANDbulls(){
  final random = Random();
  String randomNumber = (1000 + random.nextInt(9999-1000)).toString();

  stdout.write("Welcome to Cows and Bulls\nType 'exit' to stop the game\n");
  int attempts = 0;

  while (true) {
    int cows = 0;
    int bulls = 0;
    attempts += 1;

    stdout.write("\nPlease choose a four digit number: ");
    String chosenNumber = stdin.readLineSync().toString();

    if (chosenNumber == randomNumber) {
      print("Bullseye! You took $attempts attempts");
      break;
    } else if (chosenNumber == "exit") {
      print("Bye bye!");
      break;
    } else if (chosenNumber.length != randomNumber.length) {
      print("Incorrect number. Make sure to give 4 digit number");
      continue;
    }

    for (var i = 0; i < randomNumber.length; i++) {
      if (chosenNumber[i] == randomNumber[i]) {
        cows += 1;
      } else if (randomNumber.contains(chosenNumber[i])) {
        bulls += 1;
      }
    }
    print("\nAttempts: $attempts \nCows: $cows, Bulls: $bulls");
  }

}

void drawBoard(squareSize){
  String rowLines = " ---";
  String colLines = "|   ";
  
  for (var i = 0; i < squareSize; i++) {
    print(rowLines * squareSize);
    print(colLines * (squareSize + 1));
  }

  print("${rowLines * squareSize}\n");
}

List<List<int>> getUserInputBoard() {
  List<List<int>> board = [];
  for (int i = 0; i < 3; i++) {
    print('Enter the elements for row ${i + 1}, separated by spaces:');
    List<int> row = stdin.readLineSync()!
      .split(' ')
      .map((e) => int.parse(e))
      .toList();
    board.add(row);
  }
  return board;
}

void theGame(List<List<int>> board) {
  if (rowCheck(board)) {
    print("Row wins");
  } else if (rowCheck(transpose(board))) {
    print("Column wins");
  } else if (rowCheck(diagonals(board))) {
    print("Diagonal wins");
  } else {
    print("Draw!");
  }
}

bool rowCheck(List<List<int>> board) {
  for (List<int> row in board) {
    if (row.toSet().length == 1) {
      return true;
    }
  }
  return false;
}

List<List<int>> transpose(List<List<int>> board) {
  return [
    for (var i = 0; i < board.length; i++) [for (List<int> r in board) r[i]]
  ];
}

List<List<int>> diagonals(List<List<int>> board) {
  return [
    [for (var i = 0; i < board.length; i++) board[i][i]],
    [for (var i = 0; i < board.length; i++) board[i].reversed.toList()[i]]
  ];
}

void drawXOBoard(List<List<String>> board, int currentUser) {
  var move;
  currentUser == 1 ? move = 'X' : move = 'O';

  stdout.write("Please choose a coordinate: ");
  List choice = stdin.readLineSync().toString().split(" ");
  board[int.parse(choice[0])][int.parse(choice[1])] = move;
  print(board);
}

void startGame(List<List<String>> board) {
  print("""\n
  Welcome to Tic Tac Toe!
  The game is for two users: User 1 (X) and User 2 (O).
  To make a move, give the coordinates of the board separated by space.
  For instance, 0 0 is the top left corner, 1 1 is the middle cell
  and 2 2 is the bottom right corner and so on.
  If you want to quite the game, type exit.
  """);
}

void currentBoard(List<List<String>> board) {
  String row1 = "| ${board[0][0]} | ${board[0][1]} | ${board[0][2]} |";
  String row2 = "| ${board[1][0]} | ${board[1][1]} | ${board[1][2]} |";
  String row3 = "| ${board[2][0]} | ${board[2][1]} | ${board[2][2]} |";
  String border = "\n --- --- ---\n";

  print(border + row1 + border + row2 + border + row3 + border);
}

List<List<String>> makeMove(List<List<String>> board, int currentUser, List choice) {
  var move;
  currentUser == 1 ? move = 'X' : move = 'O';

  board[int.parse(choice[0])][int.parse(choice[1])] = move;
  return board;
}

bool rowCheckXO(List<List<String>> board) {
  for (List<String> row in board) {
    if (row.toSet().length == 1 && row.any((e) => e != ' ')) {
      return true;
    }
  }
  return false;
}

List<List<String>> transposeXO(List<List<String>> board) {
  return [
    for (var i = 0; i < board.length; i++) [for (List<String> r in board) r[i]]
  ];
}

List<List<String>> diagonalsXO(List<List<String>> board) {
  return [
    [for (var i = 0; i < board.length; i++) board[i][i]],
    [for (var i = 0; i < board.length; i++) board[i].reversed.toList()[i]]
  ];
}

int drawGameXO(List<List<String>> board) {
  int count = 0;
  for (var row in board) {
    for (var e in row) {
      if (e == " ") {
        count += 1;
      }
    }
  }
  return count;
}

void compGuess() {
  print("""\n
  Hello boss. I am your laptop.
  Please, think of a number between 0 and 100.
  I will try to guess it and blow your mind.

  If my guess is too low, type "low". If I am too high, type "high".
  If I guess your number correctly, type "yes".
  """);

  final random = Random();
  List<int> numList = List.generate(101, (i) => i);
  int guess = numList[random.nextInt(numList.length)];
  int count = 0;

  while (true) {
    count += 1;

    stdout.write("\nIs $guess your number? ");
    String response = stdin.readLineSync().toString().toLowerCase();

    if (response == "yes") {
      print("\nI got it! Attempts: $count\n");
      break;
    } else if (response == "low") {
      numList = numList.where((e) => e > guess).toList();
      guess = numList[random.nextInt(numList.length)];
    } else if (response == "high") {
      numList = numList.where((e) => e < guess).toList();
      guess = numList[random.nextInt(numList.length)];
    }
  }
}

String randomWord(String txt) {
  final random = Random();
  var file = File(txt);
  List<String> wordList = file.readAsLinesSync();
  String word = wordList[random.nextInt(wordList.length)];
  return word;
}

void hangman(String word) {
  List clue = ("___ " * word.length).split(" ");

  print(clue.join(" "));
  int count = 0;

  while (true) {
    count += 1;
    stdout.write("\nPlease guess a letter: ");
    String choice = stdin.readLineSync().toString().toUpperCase();

    if (choice == word) {
      print("\nBingo! Attemps: $count");
      break;
    } else if (choice == "EXIT") {
      print("\nBye bye!\n");
      break;
    } else if (choice.length > 1) {
      print("\nNope!");
      continue;
    }

    for (var i = 0; i < word.length; i++) {
      if (clue[i] == choice) {
        continue;
      } else if (word[i] == choice) {
        clue[i] = choice;
      }
    }

    print(clue.join(" "));

    if (clue.join("") == word) {
      print("\nBingo! Attempts:$count\n");
      break;
    }
  }
}

void hangman2(String word) {

  List clue = ("___ " * word.length).split(" ");

  print(clue.join(" "));
  int count = 0;
  int attempts = word.length + 1;
  List history = [];

  while (true) {
    count += 1;
    attempts -= 1;

    stdout.write("\nPlease guess a letter: ");
    String choice = stdin.readLineSync().toString().toUpperCase();
    if (history.contains(choice)) {
      print("\nYou already tried this letter!");
      attempts += 1;
    } else {
      history.add(choice);
    }

    if (choice == word) {
      print("\nBingo! Attemps: $count");
      break;
    } else if (choice == "EXIT") {
      print("\nBye bye!\n");
      break;
    } else if (choice.length > 1) {
      attempts += 1;
      print("\nNope! Attemps left: $attempts");
      continue;
    } else if (attempts < 1) {
      print("\nAttemps left: $attempts. \nGame over!");
      print("\nThe word was: $word");
      break;
    }

    for (var i = 0; i < word.length; i++) {
      if (word[i] == choice) {
        clue[i] = choice;
      }
    }
    print("\nAttempts left: $attempts");

    print(clue.join(" "));

    if (clue.join("") == word) {
      print("\nBingo! Attemps:$count\n");
      break;
    }
  }
}

String randomWord2(String txt) {
  final random = Random();
  var file = File(txt);
  List<String> wordList = file.readAsLinesSync();
  String word = wordList[random.nextInt(wordList.length)];
  return word;
}

void intro() {
  print("""\n
  Welcome to Hangman!
  We prepared a word for you.
  You have 6 attempts to guess it correctly
  You can type the whole word anytime before attempts are over
  To quit the game type "exit"
  """);
}

Map<String, String> loadBirthdaysFromFile() {
  try {
    File file = File('data\nameBirth.json');
    if (!file.existsSync()) {
      return {};
    }
    String contents = file.readAsStringSync();
    return Map<String, String>.from(json.decode(contents));
  } catch (e) {
    print("Error loading birthdays from file: $e");
    return {};
  }
}

void saveBirthdaysToFile(Map<String, String> birthdays) {
  try {
    File file = File('data\nameBirth.json');
    String jsonBirthdays = jsonEncode(birthdays);
    file.writeAsStringSync(jsonBirthdays);
  } catch (e) {
    print("Error saving birthdays to file: $e");
  }
}



















