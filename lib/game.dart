import 'dart:math';

class Game {
  int answer = 0; // instance field
  var count = 0;

  Game(){
    var r = Random();
    answer =  r.nextInt(100) + 1;
    print('คำตอบคือ $answer');
  }

  int doGuess(int num){
    if (num > answer) {
      count += 1;
      print('➧ $num is too high ▲');
      return 0;
    } else if (num < answer){
      count +=1;
      print('➧ $num is too low ▼');
      return 0;
    } else {
      count += 1;
      print('➧ $num is correct ✔, total guess : $count');
      return 1;
    }
  }
}