import 'package:flutter/material.dart';
import 'package:quiz_app/core/lib/widgets/custom_text.dart';
import 'widgets/home_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const CustomText("Home"),
        centerTitle: true,
      ),
      body: HomeBody(),
    );
  }
}
