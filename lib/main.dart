import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:quiz_app/core/custom_widgets.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Quiz App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: AppPages.initial,
      getPages: AppPages.routes,
      fallbackLocale: Get.deviceLocale,
    );
  }
}
