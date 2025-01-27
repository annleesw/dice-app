import 'dart:math'; //connect to dart package

import 'package:flutter/material.dart'; //connect to flutter package

final randomiser = Random();

class DiceRoller extends StatefulWidget { //StatelessWidget always have 2 classes
  const DiceRoller({super.key}); //positional argument

  @override //Override is a annotation
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}
class _DiceRollerState extends State<DiceRoller> { //constructor function
  var currentDiceRoll = 2;
  // var activeDiceImage = 'assets/images/dice-2.png';

  void rollDice() {
    // var diceRoll = Random().nextInt(6) + 1;
    setState((){ //re-execute the build method, "loop"
      currentDiceRoll = randomiser.nextInt(6) + 1;
      // activeDiceImage = 'assets/images/dice-$diceRoll.png';
    });
  }
  @override //Override is a annotation
  Widget build(context) {
    return Column(
        mainAxisSize: MainAxisSize.min,
        children:[
          Image.asset(
            'assets/images/dice-$currentDiceRoll.png',
            // activeDiceImage,
            width: 200,
          ),
          const SizedBox(
            height: 20,
          ),
          TextButton(
            onPressed: rollDice, 
            style: TextButton.styleFrom(
              // padding: EdgeInsets.only(
              //   top: 20,
              // ),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 28,
            ),
          ),
            child: const Text('Roll Dice'), //keep widget argument last
          ),
        ],
    );
  }
}