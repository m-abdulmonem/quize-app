import 'package:flutter/material.dart';
import 'widgets/questions_body.dart';

class QuestionsView extends StatelessWidget {
  const QuestionsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Questions"),
      ),
      body: const QuestionsBody(),
    );
  }
}
