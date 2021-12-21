import 'package:quiz_app/core/custom_widgets.dart';
import 'package:quiz_app/core/lib/widgets/custom_spacer.dart';

import '../../../manger/question_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'question.dart';
class QuestionBody extends GetWidget<QuestionController> {
  const QuestionBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.only(top: Get.height*.05,right: 14,left: 14),
      child: SizedBox(
        width: Get.width,
        child: GetBuilder<QuestionController>(builder: (con) => Column(
          children:  [
            Question(controller.question.question?? ""),
            const VerticalSpace(0.06),
            ...controller.loadAnswers(),
          ],
        )),
      ),
    );
  }
}
