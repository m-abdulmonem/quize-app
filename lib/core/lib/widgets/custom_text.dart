import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color? color;
  const CustomText(this.text, {Key? key, this.fontSize = 30, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(color:color,fontSize: fontSize, fontWeight: FontWeight.bold,     letterSpacing: 1.2,
        wordSpacing: 1.2,),
    );
  }
}
