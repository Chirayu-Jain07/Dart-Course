//Library file for stdout and stdin
import 'dart:io';

//Library to generate random number
import 'dart:math';

//Declare the enumerator
enum Move { rock, paper, scissors }
void main() {
  //Generate random number method
  var rng = Random();
  //Running the loop for n number of turns
  while (true) {
    //Use std.out insted of print so the we cound get the input on samne line
    stdout.write('Rock Paper Scissor ? (r/p/s) ');
    //Collect the input from user
    final input = stdin.readLineSync();
    //Check player input
    if (input == 'r' || input == 'p' || input == 's') {
      //Declare the variable to hold player move accoding to enum
      var playerMove;
      if (input == 'r') {
        playerMove = Move.rock;
      } else if (input == 'p') {
        playerMove = Move.paper;
      } else if (input == 's') {
        playerMove = Move.scissors;
      }
      //Generate random upto 3 ( 0 to 3 ) and assign to variable
      final random = rng.nextInt(3);
      //Store the random move of ai
      final aiMove = Move.values[random];
      //Display the player move
      print('Your Move : $playerMove');
      //Display the ai move
      print('AI Move : $aiMove');
      //Draw condition
      if (playerMove == aiMove) {
        print('It\'s a Draw ');
      } else if (playerMove == Move.paper && aiMove == Move.rock ||
          playerMove == Move.rock && aiMove == Move.scissors ||
          playerMove == Move.scissors && aiMove == Move.paper) {
        //Player's result as per game rule / gameplay
        print('You Win!');
      } else {
        print('You Lose');
      }
    } else if (input == 'q') {
      //To get out of the loop
      break;
    } else {
      //Invalid input if any other character pressed
      print('Invalid input');
    }
  }
}
