import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  String questiontext;
  Question(this.questiontext);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        padding: EdgeInsets.all(10),
        child: Text(
          questiontext,
          style: TextStyle(fontSize: 20, color: Colors.green[300]),
          textAlign: TextAlign.center,
        ));
  }
}
