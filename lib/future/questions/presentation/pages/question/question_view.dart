import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/core/custom_widgets.dart';
import '../../manger/question_controller.dart';
import 'widgets/question_body.dart';

class QuestionView extends StatelessWidget {
  final controller =
      Get.put<QuestionController>(QuestionController(), permanent: true);

  QuestionView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomText("${controller.questionsTitle} Questions"),
        centerTitle: true,
      ),
      body: const QuestionBody(),
    );
  }
}
