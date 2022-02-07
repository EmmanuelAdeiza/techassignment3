import 'package:flutter/material.dart';

class ReusableTextField extends StatelessWidget {
  const ReusableTextField(
      {Key? key,
      required this.height,
      required this.width,
      required this.hintText,
      this.dicon})
      : super(key: key);

  final double height;
  final double width;
  final String hintText;
  final Icon? dicon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height * 0.05,
      width: width * 0.8,
      padding: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        color: Colors.green[100],
        borderRadius: const BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: TextField(
        textAlign: TextAlign.justify,
        cursorHeight: 18,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(fontSize: 20, color: Colors.green[700]),
          border: InputBorder.none,
          suffixIcon: dicon,
        ),
      ),
    );
  }
}
