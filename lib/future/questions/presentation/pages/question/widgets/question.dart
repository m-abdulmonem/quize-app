import 'package:flutter/material.dart';


class Question extends StatelessWidget {
  final String question;
  const Question(this.question,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text("$question ?",style: const TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.bold,
    ),);
  }
}
