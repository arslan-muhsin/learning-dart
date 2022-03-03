import 'dart:io';

void main(List<String> arguments) {
  var basketballPlayers = <String>['Michael Jordan', 'Kobe Bryant', 'Derrick Rose'];

  basketballPlayers.forEach((player) {
    var findIndex = basketballPlayers.indexOf(player);

    print('Index: $findIndex - $player');
  });

  print('\n');
  stdout.write('Select your favorite basketball player by index number.\n');

  var selectedIndexInput = stdin.readLineSync();
  var selectedIndex = int.parse(selectedIndexInput!);

  if(selectedIndex == 0 || selectedIndex == 1 || selectedIndex == 2){
    var selectedBasketballPlayer = basketballPlayers[selectedIndex];

    print('Your favorite player is $selectedBasketballPlayer');
  }
  else{
    stderr.write('Select basketball player with correct index number.');
  }
}
