import 'package:flutter/material.dart'; //connect to flutter package

import 'package:dice_app/dice_roller.dart';

//var keeps it optional, final makes it required, const makes it immutable
const startAlignment = Alignment.topLeft; //Alignment? is a nullable type
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget { //StatelessWidget is a class
  const GradientContainer(this.color1, this.color2, {super.key}); //positional argument
  //const GradientContainer({super.key}, required this.colors); 
  // initialise the class
  // super.key is a constructor
  const GradientContainer.purple({super.key})
      : color1 = Colors.deepPurple, 
        color2 = Colors.indigo;

  final Color color1;
  final Color color2; 

  @override //Override is a annotation
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
        child: DiceRoller(),
      ),
    );
  }
}

// class GradientContainer extends StatelessWidget{ //StatelessWidget is a class
//   const GradientContainer(this.colors, {super.key}); //positional argument
//   //const GradientContainer({super.key}, required this.colors); 
//   // initialise the class
//   // super.key is a constructor

//   final List<Color> colors; 

//   @override //Override is a annotation
//   Widget build(context) {
//     return Container(
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           colors: [
//             Colors.lightBlueAccent,
//             Colors.indigo,
//           ],
//           begin: startAlignment,
//           end: endAlignment,
//         ),
//       ),
//       child: const Center(
//         child: StyleText(
//           'Hello World'),
//       )
//     );
//   }
// }