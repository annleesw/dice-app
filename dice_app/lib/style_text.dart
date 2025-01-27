import 'package:flutter/material.dart'; //connect to flutter package

class StyleText extends StatelessWidget{ //StatelessWidget is a class
  const StyleText(this.text, {super.key}); 
    // initialise the class
    // super.key is a constructor
    // this.text accept or automatically assigns the value of text to the text property

  final String text; 
  //final store and makes it the same object throughout the lifecycle of the widget
  //String is a data type

  @override //Override is a annotation
  Widget build(context) {
    return Text(
      text, //text use value of text property
      style: const TextStyle(
          color: Colors.white,
          fontSize: 28.0,
          fontFamily: 'Helvetica',
          ),
        );
  }
}  