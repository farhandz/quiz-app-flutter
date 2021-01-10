import 'package:flutter/material.dart';
import './quiz.dart';
import './score.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // ignore: todo
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionindex = 0;
  var _totalScore = 0;
  void _answerQuestion(int score) {
    setState(() {
      _questionindex = _questionindex + 1;
    });
    _totalScore += score;
  }

  var question = [
    {
      'question': 'siapa pirst lope mu?',
      'answers': [
        {'text': 'tayo', 'score': 10},
        {'text': 'nartoh', 'score': 30},
        {'text': 'saskeh', 'score': 5},
        {'text': 'bis', 'score': 0},
      ]
    },
    {
      'question': 'Siapa pirst kiss mu?',
      'answers': [
        {'text': 'sagiri', 'score': 100},
        {'text': 'rem', 'score': 10},
        {'text': 'manis', 'score': 1},
        {'text': 'kamu', 'score': 0},
      ]
    },
    {
      'question': 'apakah kamu itu furry???',
      'answers': [
        {'text': 'ya', 'score': 0},
        {'text': 'tidak', 'score': 10},
        {'text': 'bisa jadi', 'score': 20},
        {'text': 'Oh Tentu Tidak', 'score': 100},
      ]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: _questionindex < question.length
            ? Quiz(
                anserquestion: _answerQuestion,
                question: question,
                questionIndex: _questionindex,
              )
            : Score(
                totalScore: _totalScore,
              ));
  }
}
