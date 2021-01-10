import 'package:flutter/material.dart';

class Anser extends StatelessWidget {
  final Function SelecHandler;
  final String annserTExt;
  Anser(this.SelecHandler, this.annserTExt);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        textColor: Colors.white,
        color: Colors.blue,
        child: Text(annserTExt),
        onPressed: SelecHandler,
      ),
    );
  }
}
