import 'package:flutter/cupertino.dart';

class QuestionsModel {
  String? title;
  IconData? icon;

  QuestionsModel({this.title, this.icon});

  QuestionsModel.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    icon = json['icon'];
  }

  Map<String, dynamic> toJson() =>
      <String, dynamic>{'title': title, 'icon': icon};
}
