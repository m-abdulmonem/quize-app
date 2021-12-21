import '../manger/home_controller.dart';
import 'package:quiz_app/future/questions/presentation/manger/question_controller.dart';
import 'package:quiz_app/core/custom_widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeBody extends StatelessWidget {
  final controller = Get.put(HomeController(),permanent: true);
  HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 15),
      child: SizedBox(
        width: Get.width,
        height: Get.height * .5,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomText(controller.welcomeMessage),
            if(!controller.storage.hasData("player_name_key"))TextFormField(
                controller: controller.nameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide()),
                  hintText: "Enter your name",
                  labelText: "Enter your name",
                ),
                onChanged: controller.onNameChanged,
                onEditingComplete: () => FocusScope.of(context).unfocus()),
            Column(children: [
              GetBuilder<QuestionController>(
                init: QuestionController(),
                builder: (con) => CustomText(
                  controller.storage.read("points_key").toString(),
                  fontSize: 60,
                ),
              ),
              const CustomText(
                "Points",
                fontSize: 15,
              )
            ]),
            CustomButton(
              text: "start Quiz".toCapitalize(),
              onTap: controller.startQuiz,
            )
          ],
        ),
      ),
    );
  }
}
