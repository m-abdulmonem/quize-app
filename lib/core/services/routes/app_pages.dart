import 'package:get/get.dart';
import 'package:quiz_app/core/services/binding/binding.dart';
import 'package:quiz_app/future/home/presentation/home_view.dart';
import 'package:quiz_app/future/questions/presentation/pages/question/question_view.dart';
import 'package:quiz_app/future/questions/presentation/pages/questions/questions_view.dart';
import 'app_routes.dart';

class AppPages {
  static const String  initial = Routes.home;

  static final routes = <GetPage<dynamic>>[
    GetPage(name: Routes.home, page: () => const HomeView()),
    GetPage(
      name: Routes.questions,
      page: () => const QuestionsView(),
      binding: Binding(),
      children: [
        GetPage(name: Routes.question, page: () => QuestionView()),
      ],
    ),
  ];
}
