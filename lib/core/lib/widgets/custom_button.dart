import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../extensions/custom_string_extensions.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback? onTap,onLongTap;
  const CustomButton({Key? key,required this.text, this.onTap, this.onLongTap}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      onLongPress: onLongTap,
      child: Container(
        width: Get.width,
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 14,vertical: 10),
        child: Text(
          text.toCapitalize(),
          style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.2,
              wordSpacing: 1.2,
              fontSize: 30),
        ),
        decoration:  BoxDecoration(color: Colors.blueAccent,borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}