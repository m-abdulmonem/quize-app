import 'package:flutter/material.dart';

import '../pages/question/widgets/question_answer.dart';
import 'package:quiz_app/core/custom_widgets.dart';
import '../../domain/models/questions_json.dart';
import '../../domain/models/question_model.dart';
import 'package:get_storage/get_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';


class QuestionController extends GetxController {
  int points =
      GetStorage().hasData("points_key") ? GetStorage().read("points_key") : 0;
  final String questionsTitle = Get.arguments != null ? Get.arguments[0] : "";
  late bool correctAnswer,isAnswered = false;
  late QuestionModel question;
  late int? questionIndex,selectedIndex;
  late Color color = Colors.grey;

  void answer(correctIndex) {
    isAnswered = true;
    selectedIndex = correctIndex;
    if (correctIndex == question.correctIndex) {
      points += 10;
      correctAnswer = true;
    }else {
      points -= 5;
      correctAnswer = false;
    }
    GetStorage().write("points_key", points);
    Future.delayed(const Duration(seconds: 1),(){
      loadQuestion();
      correctAnswer = false;
      selectedIndex = null;
      isAnswered =  false;
    });
    update();
  }

  void loadQuestion() {
    final randomQuestion = questions.random();
    questionIndex = randomQuestion.index!;
    question = QuestionModel.fromJson(randomQuestion.item);
    update();
  }

  loadAnswers() {
    return question.answers?.asMap().entries.map((entry) {
      return Column(
        children: [
          QuestionAnswer(text: entry.value, onTap: () => answer(entry.key),index: entry.key,),
          const VerticalSpace(0.06)
        ],
      );
    });
  }

  @override
  void onInit() {
    loadQuestion();
    super.onInit();
  }

  @override
  InternalFinalCallback<void> get onStart {
    loadQuestion();
    return super.onStart;
  }
}
