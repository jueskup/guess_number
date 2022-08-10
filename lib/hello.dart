import 'dart:io';
import 'game.dart';

// top-level function
void main(){
  var game = Game();
  var result = 0;

  do {
    stdout.write('Please guess the number between 1 and 100 : ');
    var input = stdin.readLineSync();
    var guess = int.tryParse(input!);

    if(guess == null){
      print('Please Enter Number Only');
      continue;
    }

    result = game.doGuess(guess);

    if(result == 1){
      stdout.write('You want to play again (y/n) : ');
      var inputYN = stdin.readLineSync();

      if (inputYN == 'n'){
        result = 1;
        print(' THE END  ');
      } else if (inputYN == 'y') {
        game = Game();
        result = 0;
      }
    }
  } while(result != 1);
}