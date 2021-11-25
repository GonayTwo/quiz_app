import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  //const Quiz({Key key}) : super(key: key);
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion; // Caso fique com VoidCallback no lugar de Function,
                                    // gera erro de tipo de função no arquivo main e outro erro no quiz.dart

  Quiz({
    required this.questions,
    required this.answerQuestion,
    required this.questionIndex
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
            questions[questionIndex]['questionText'] as String
        ),
        ...(questions[questionIndex]['answers'] as List<Map<String,Object>>).map((answer){
          return Answer(() => answerQuestion(answer['score']), answer['text'] as String );
        }).toList()

      ],
    );
  }
}
