class QuestionModel {
  String? question;
  List<String>? answers;
  int? correctIndex;

  QuestionModel({
      this.question, 
      this.answers, 
      this.correctIndex,});

  QuestionModel.fromJson(dynamic json) {
    question = json['question'];
    answers = json['answers'] != null ? json['answers'].cast<String>() : [];
    correctIndex = json['correctIndex'];
  }


  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['question'] = question;
    map['answers'] = answers;
    map['correctIndex'] = correctIndex;
    return map;
  }

}
