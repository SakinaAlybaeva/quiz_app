//import 'package:quiz_app/home_page.dart';
import 'package:quiz_app/quiz_model.dart';

class QuizBrain {
  int index = 0;
  List<QuizModel> suroolorJooptor = [
    QuizModel(suroo: 'Kyrgyzstanda 7 oblast barby?', joop: true),
    QuizModel(suroo: 'Kyrgyzstanda metro  barby?', joop: false),
    QuizModel(suroo: 'Kyrgyzstanda okean barby?', joop: false),
    QuizModel(suroo: 'Kyrgyzstanda mashina barby?', joop: true),
  ];

  String suroonuAlypkel() {
    if (index < suroolorJooptor.length) {
      return suroolorJooptor[index].suroo!;
    } else {
      return 'Suroolor buttu';
    }
  }

  jooptuAlypkel() {
    if (index < suroolorJooptor.length) {
      return suroolorJooptor[index].joop;
    }
  }

  void otkoz() {
    index = index + 1;
  }

  void restart() {
    index = 0;
  }
}

final QuizBrain quizBrain = QuizBrain();
