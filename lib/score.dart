import 'package:flutter/material.dart';

class Score extends StatelessWidget {
  final int totalScore;

  Score({@required this.totalScore});

  String get haiManis {
    if (totalScore <= 20) {
      return "sinau maning sob";
    } else if (totalScore <= 50) {
      return "mendingan tapi kudu sianu maning";
    } else if (totalScore >= 100) {
      return "beres";
    } else if (totalScore < 100) {
      return "beres";
    } else {
      return "pinter nemen kwn ";
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
            child: Container(
          color: Colors.blueAccent,
          padding: EdgeInsets.all(10),
          child: Text(
            haiManis + " " + totalScore.toString(),
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
        )),
      ),
    );
  }
}
