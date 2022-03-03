import 'dart:io';
import 'dart:math';

void main(List<String> arguments) {
  var isUserMoveValid = false;
  String? userMove;

  while (true) {
    userMove = askUserMove();

    if (userMove == 'Quit') {
      break;
    }

    var isUserMoveValid = userMoveValidation(userMove);

    if (!isUserMoveValid) {
      print(
          'Please enter valid selection. Type r for Rock p for Paper s for Scissors');
      userMove = null;
      continue;
    }

    final computerMove = generateComputerMove();
    final isDraw = checkDraw(userMove, computerMove);
    final isUserWin = checkUserWin(userMove, computerMove);

    if (isDraw) {
      print('Its draw 🤝.\nYour move: $userMove\nComputer move: $computerMove');
    } else if (isUserWin) {
      print('You won 🏆.\nYour move: $userMove\nComputer move: $computerMove');
    } else {
      print('You lost 👻.\nYour move: $userMove\nComputer move: $computerMove');
    }

    userMove == null;
  }
}

String? askUserMove() {
  print('Rock, paper or scissors? (r/p/s)');
  final moveSelection = stdin.readLineSync();
  return convertUserMove(moveSelection);
}

String? convertUserMove(String? move) {
  switch (move) {
    case 'r':
      return 'Rock';
    case 'p':
      return 'Paper';
    case 's':
      return 'Scissors';
    case 'q':
      return 'Quit';
    default:
      return null;
  }
}

String generateComputerMove() {
  final random = Random();
  var moveNumber = random.nextInt(2) + 1;

  switch (moveNumber) {
    case 1:
      return 'Rock';
    case 2:
      return 'Paper';
    case 3:
      return 'Scissors';
    default:
      return '';
  }
}

bool userMoveValidation(String? move) {
  switch (move) {
    case 'Rock':
      return true;
    case 'Paper':
      return true;
    case 'Scissors':
      return true;
    default:
      return false;
  }
}

bool checkUserWin(String? userMove, String computerMove) {
  if ((userMove == 'Rock' && computerMove == 'Scissors') ||
      (userMove == 'Paper' && computerMove == 'Rock') ||
      (userMove == 'Scissors' && computerMove == 'Paper')) {
    return true;
  } else {
    return false;
  }
}

bool checkDraw(String? userMove, String computerMove) {
  return userMove == computerMove;
}
