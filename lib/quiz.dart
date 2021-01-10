import 'package:flutter/material.dart';
import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final Function anserquestion;
  final List<Map<String, Object>> question;
  final int questionIndex;

  Quiz({this.anserquestion, this.question, this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("hai manis ini"),
          ),
          body: Column(children: [
            Question(question[questionIndex]['question']),
            ...(question[questionIndex]['answers'] as List<Map<String, Object>>)
                .map((answer) {
              return Anser(
                  () => anserquestion(answer['score']), answer['text']);
            }).toList()
          ])),
    );
  }
}
