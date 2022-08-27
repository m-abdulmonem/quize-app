import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/core/custom_widgets.dart';
import '../../domain/models/questions_model.dart';

class QuestionsController extends GetxController{

  final list = [
    {'title': 'Animals', 'icon': Icons.animation},
    {'title': 'Colors', 'icon': Icons.ac_unit_rounded},
    {'title': 'Historical', 'icon': Icons.eighteen_mp_rounded},
    {'title': 'islamic', 'icon': Icons.ten_k},
    {'title': 'arabic', 'icon': Icons.sixty_fps_rounded},
  ];
  late int index;


  QuestionsModel get data => QuestionsModel.fromJson(list[index]);

  loop(){
    return list.map((index){
      final data = QuestionsModel.fromJson(index);
      return ListTile(
        title: CustomText(
          "${data.title} Questions".toCapitalize(),
          fontSize: 16,
        ),
        onTap: () =>
            Get.toNamed("questions/question",arguments: [data.title]),
      );
    });
  }



}