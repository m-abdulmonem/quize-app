import 'package:get/get.dart';
import 'package:quiz_app/future/questions/presentation/manger/questions_controller.dart';

class Binding implements Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => QuestionsController());
  }

}