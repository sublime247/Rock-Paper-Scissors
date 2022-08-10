// import 'dart:html';
import 'dart:io';
import 'dart:math';

// import 'package:rps/rps.dart' as rps;

enum Options { rock, paper, scissors }
void main(List<String> arguments) {
  while (true) {
    var rnd = Random();
    stdout.write('Welcome to Rock, Paper and Scissors Game!! r/p/s? ');
    final input = stdin.readLineSync();
    if (input == 'r' || input == 'p' || input == 's') {
      // ignore: non_constant_identifier_names, prefer_typing_uninitialized_variables
      var Playermove;
      if (input == 'r') {
        Playermove = Options.rock;
      }
      if (input == 'p') {
        Playermove = Options.paper;
      }
      if (input == 's') {
        Playermove = Options.scissors;
      }
      final random = rnd.nextInt(3);
      final aiMoves = Options.values[random];
      print("you play: $Playermove");
      print('aiMoves played: $aiMoves');
      if (Playermove == aiMoves) {
        print("Ïts a draw");
      } else if ((Playermove == Options.rock && aiMoves == Options.paper) ||
          (Playermove == Options.scissors && aiMoves == Options.rock) ||
          (Playermove == Options.paper && aiMoves == Options.scissors)) {
        print('you win');
      } else {
        print('you lose');
      }
    } else if (input == 'q') {
      break;
    } else {
      print('Ínvalid input');
    }
  }
}
