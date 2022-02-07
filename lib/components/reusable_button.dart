import 'package:flutter/material.dart';
// import 'dart:io';

class ReusableButton extends StatelessWidget {
  ReusableButton(
      {required this.height,
      required this.width,
      required this.buttonText,
      required this.backColor,
      required this.textColor,
      required this.onPressed});

  final double height;
  final double width;
  final String buttonText;
  final Color textColor;
  final Color backColor;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onPressed(),
      child: Container(
        height: height * 0.05,
        width: width * 0.8,
        decoration: BoxDecoration(
          color: backColor,
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        child: Center(
          child: Text(
            buttonText,
            style: TextStyle(fontSize: 26, color: textColor),
          ),
        ),
      ),
    );
  }
}
