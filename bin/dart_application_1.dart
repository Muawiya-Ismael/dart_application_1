import 'package:dart_application_1/dart_application_1.dart' as dart_application_1;
import 'dart:io';
import 'dart:math';
import 'dart:convert';
import 'dart:ffi';
import 'package:intl/intl.dart';

void main() async {
  stdout.write("""
----------------------------------------------------------------------------------------------------------------------------------
| Chose number 1 to run Exercise 1 program, 2 for Exercise 2 program and so on... until 28 or 0 to display Exercises Question :) |
----------------------------------------------------------------------------------------------------------------------------------\n""");
  int exerciseNumber = int.parse(stdin.readLineSync() ?? "");
  switch (exerciseNumber) {

    case 0:
      stdout.write("""
-------------------------------------------------------------------------------------------------------------------------
| Chose number 1 to display Exercise 1 Question, 2 for to display Exercise 2 Question and so on... until Exercise 28 :) |
-------------------------------------------------------------------------------------------------------------------------\n""");
      showExerciseText(int.parse(stdin.readLineSync() ?? ''));

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
      Map<String, String> birthdays =  loadBirthdaysFromFile();

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
      birthdays("data\\nameBirth.json");

    case 28:
      Map<String, String> birthdays = loadBirthdaysFromFile();
      Map<String, int> monthCounts = {};
      birthdays.forEach((name, birthDate) {
        try {
          DateTime dateTime = parseCustomDate(birthDate);
          String month = getMonthName(dateTime.month);
          monthCounts[month] ??= 0;
          monthCounts[month] = monthCounts[month]! + 1;
        } catch (e) {
          print("Error parsing date for $name: $e");
        }
      });
      print("Scientist birthdays by month:");
      monthCounts.forEach((month, count) {
        print("$month: $count");
      });
     
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
    File file = File('data\\nameBirth.json');
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
    File file = File('data\\nameBirth.json');
    String jsonBirthdays = jsonEncode(birthdays);
    file.writeAsStringSync(jsonBirthdays);
  } catch (e) {
    print("Error saving birthdays to file: $e");
  }
}

void birthdays(String txt) {

  var file = File(txt);
  Map<String, Object> data = json.decode(file.readAsStringSync());

  print("\nHello there!. We know the birthdays of the following people: \n");
  data.forEach((key, value) {
    print(key);
  });

  stdout.write("\nWho's birthday do you want to know? ");
  String choice = stdin.readLineSync().toString();
  print("\n$choice's birthday is ${data[choice]}\n");

  stdout.write("\nWould you like to add more people's birthdays? ");
  String answer = stdin.readLineSync().toString().toLowerCase();

  if (answer == "yes") {
    stdout.write("Give us a name: ");
    String name = stdin.readLineSync().toString();
    stdout.write("Give us their birthday (dd/mm/yyyy): ");
    String birthday = stdin.readLineSync().toString();

    data[name] = birthday;
    file.writeAsStringSync(json.encode(data));

    print("\nThank you! We have more people now!\n");

    data.forEach(
      (key, value) {
        print("$key: $value");
      },
    );
  } else {
    print("\nOK. Bye bye!\n");
  }
}

DateTime parseCustomDate(String dateStr) {
  List<String> parts = dateStr.split('/');
  if (parts.length != 3) {
    throw FormatException("Invalid date format: $dateStr");
  }
  int day = int.parse(parts[0]);
  int month = int.parse(parts[1]);
  int year = int.parse(parts[2]);
  return DateTime(year, month, day);
}

String getMonthName(int month) {
  switch (month) {
    case 1:
      return 'January';
    case 2:
      return 'February';
    case 3:
      return 'March';
    case 4:
      return 'April';
    case 5:
      return 'May';
    case 6:
      return 'June';
    case 7:
      return 'July';
    case 8:
      return 'August';
    case 9:
      return 'September';
    case 10:
      return 'October';
    case 11:
      return 'November';
    case 12:
      return 'December';
    default:
      return 'Unknown';
  }
}

Future<String> readFileContent(String path) async {
  try {
    final file = File(path);
    return await file.readAsString();
  } catch (e) {
    return 'Error reading file: $e';
  }
}

void showExerciseText(int exercise) async{
  switch(exercise){

    case 1:
      String path = 'data\\exercises\\exercises1.txt';
      String fileContent = await readFileContent(path);
      print("\n"+fileContent+"\n");
    
    case 2:
      String path = 'data\\exercises\\exercises2.txt';
      String fileContent = await readFileContent(path);
      print("\n"+fileContent+"\n");

    case 3:
      String path = 'data\\exercises\\exercises3.txt';
      String fileContent = await readFileContent(path);
      print("\n"+fileContent+"\n");

    case 4:
      String path = 'data\\exercises\\exercises4.txt';
      String fileContent = await readFileContent(path);
      print("\n"+fileContent+"\n");

    case 5:
      String path = 'data\\exercises\\exercises5.txt';
      String fileContent = await readFileContent(path);
      print("\n"+fileContent+"\n");

    case 6:
      String path = 'data\\exercises\\exercises6.txt';
      String fileContent = await readFileContent(path);
      print("\n"+fileContent+"\n");
    
    case 7:
      String path = 'data\\exercises\\exercises7.txt';
      String fileContent = await readFileContent(path);
      print("\n"+fileContent+"\n");

    case 8:
      String path = 'data\\exercises\\exercises8.txt';
      String fileContent = await readFileContent(path);
      print("\n"+fileContent+"\n");

    case 9:
      String path = 'data\\exercises\\exercises9.txt';
      String fileContent = await readFileContent(path);
      print("\n"+fileContent+"\n");

    case 10:
      String path = 'data\\exercises\\exercises10.txt';
      String fileContent = await readFileContent(path);
      print("\n"+fileContent+"\n");

    case 11:
      String path = 'data\\exercises\\exercises11.txt';
      String fileContent = await readFileContent(path);
      print("\n"+fileContent+"\n");

    case 12:
      String path = 'data\\exercises\\exercises12.txt';
      String fileContent = await readFileContent(path);
      print("\n"+fileContent+"\n");

    case 13:
      String path = 'data\\exercises\\exercises13.txt';
      String fileContent = await readFileContent(path);
      print("\n"+fileContent+"\n");

    case 14:
      String path = 'data\\exercises\\exercises14.txt';
      String fileContent = await readFileContent(path);
      print("\n"+fileContent+"\n");

    case 15:
      String path = 'data\\exercises\\exercises15.txt';
      String fileContent = await readFileContent(path);
      print("\n"+fileContent+"\n");

    case 16:
      String path = 'data\\exercises\\exercises16.txt';
      String fileContent = await readFileContent(path);
      print("\n"+fileContent+"\n");

    case 17:
      String path = 'data\\exercises\\exercises17.txt';
      String fileContent = await readFileContent(path);
      print("\n"+fileContent+"\n");

    case 18:
      String path = 'data\\exercises\\exercises18.txt';
      String fileContent = await readFileContent(path);
      print("\n"+fileContent+"\n");

    case 19:
      String path = 'data\\exercises\\exercises19.txt';
      String fileContent = await readFileContent(path);
      print("\n"+fileContent+"\n");

    case 20:
      String path = 'data\\exercises\\exercises20.txt';
      String fileContent = await readFileContent(path);
      print("\n"+fileContent+"\n");

    case 21:
      String path = 'data\\exercises\\exercises21.txt';
      String fileContent = await readFileContent(path);
      print("\n"+fileContent+"\n");

    case 22:
      String path = 'data\\exercises\\exercises22.txt';
      String fileContent = await readFileContent(path);
      print("\n"+fileContent+"\n");

    case 23:
      String path = 'data\\exercises\\exercises23.txt';
      String fileContent = await readFileContent(path);
      print("\n"+fileContent+"\n");

    case 24:
      String path = 'data\\exercises\\exercises24.txt';
      String fileContent = await readFileContent(path);
      print("\n"+fileContent+"\n");

    case 25:
      String path = 'data\\exercises\\exercises25.txt';
      String fileContent = await readFileContent(path);
      print("\n"+fileContent+"\n");

    case 26:
      String path = 'data\\exercises\\exercises26.txt';
      String fileContent = await readFileContent(path);
      print("\n"+fileContent+"\n");

    case 27:
      String path = 'data\\exercises\\exercises27.txt';
      String fileContent = await readFileContent(path);
      print("\n"+fileContent+"\n");

    case 28:
      String path = 'data\\exercises\\exercises28.txt';
      String fileContent = await readFileContent(path);
      print("\n"+fileContent+"\n");

  }
}