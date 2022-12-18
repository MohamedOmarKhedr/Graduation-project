import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  DefaultButton({
    required this.text,
    required this.function,
    required this.backGroundButton,
    required this.textColor,
  });

  String text;

  Function() function;

  Color backGroundButton;

  Color textColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: function,
      child: Text(
        text,
        style: TextStyle(
            fontSize: 22, color: textColor, fontWeight: FontWeight.bold),
      ),
      style: ElevatedButton.styleFrom(
        minimumSize: Size(150, 55),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        backgroundColor: backGroundButton,
      ),
    );
  }
}
