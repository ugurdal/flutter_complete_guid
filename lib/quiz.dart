import 'package:flutter/material.dart';
import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final VoidCallback selectHandler;
  final int questionIndex;
  final List<Map<String, Object>> questions;

  const Quiz({
    required this.questions,
    required this.questionIndex,
    required this.selectHandler,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(
          questions[questionIndex]['questionText'] as String,
        ),
        //Text(questions.elementAt(0)),
        //Answer(_answerQuestion),
        ...(questions[questionIndex]["answers"] as List<String>).map((answer) {
          return Answer(selectHandler, answer);
        }).toList(),
      ],
    );
  }
}
