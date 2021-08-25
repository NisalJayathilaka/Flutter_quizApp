import 'package:flutter/material.dart';

class Anwsers extends StatelessWidget {
  final VoidCallback anwsersButton;
  final String anwsersNames;
  Anwsers(this.anwsersButton,this.anwsersNames);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        onPressed: anwsersButton,
        color: Colors.amber,
        textColor: Colors.black,
        child: Text(anwsersNames),
      ),
    );
  }
}
