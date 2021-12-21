import 'package:quiz_app/core/custom_widgets.dart';
import '../../../manger/questions_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class QuestionsBody extends GetWidget<QuestionsController> {
  const QuestionsBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemBuilder: (_, index) {
        controller.index = index;
        return ListTile(
          title: CustomText(
            "${controller.data.title} Questions".toCapitalize(),
            fontSize: 16,
          ),
          leading: Icon(controller.data.icon),
          onTap: () =>
              Get.toNamed("questions/question",arguments: [controller.data.title]),
        );
      },
      itemCount: controller.list.length,
    );
  }
}
