import 'package:flutter/material.dart'; //connect to flutter package

import 'package:dice_app/gradient_container.dart';

void main() { //defining a function, main() is function name/ identifier
  runApp( //excuting a function 
    const MaterialApp( // const optimise runtime performance & keep const, MaterialApp is a widget
      home: Scaffold( // Scaffold is a widget
        body: GradientContainer(
          Colors.deepPurple,
          Colors.indigo,
        )
      ),
    ),
  );
}