import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class HomeController extends GetxController {
  late TextEditingController nameController;

  String get welcomeMessage{
    final msg = GetStorage().hasData("player_name_key")
        ? "Welcome ${GetStorage().read("player_name_key")}"
        : "Welcome to Quiz app";

    update();
    return msg;
  }

  void startQuiz(){
    if (nameController.text.isNotEmpty || storage.hasData("player_name_key")) {
      Get.toNamed("questions");
    }
  }

  void onNameChanged(val){
    storage.write("player_name_key", val);
    update();
  }


  GetStorage get storage => GetStorage();

  @override
  void onInit() {
    nameController = TextEditingController(
        text: storage.hasData("player_name_key")
            ? storage.read("player_name_key")
            : "");

    super.onInit();
  }
}
