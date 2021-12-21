import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/core/custom_widgets.dart';
import '../../../manger/question_controller.dart';

class QuestionAnswer extends StatelessWidget {
  final VoidCallback onTap;
  final String text;
  final int index;
  const QuestionAnswer(
      {Key? key, required this.onTap, required this.text,required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<QuestionController>(builder: (controller) {
      Color color(){
        if (controller.isAnswered) {
          if (index == controller.question.correctIndex) {
            return Colors.greenAccent;
          } else if (index == controller.selectedIndex &&
              controller.selectedIndex != controller.question.correctIndex) {
            return Colors.redAccent;
          }
        }
        return Colors.grey;
      }

      return GestureDetector(
        onTap: onTap,
        child: Container(
          width: Get.width,
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
          child: Text(
            text.toCapitalize(),
            style: TextStyle(
                color: color() == Colors.grey ? Colors.grey: color(),
                fontWeight: FontWeight.bold,
                letterSpacing: 1.2,
                wordSpacing: 1.2,
                fontSize: 30),
          ),
          decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: color())),
        ),
      );
    });
  }
}
