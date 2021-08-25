import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int rsultScore;
  final VoidCallback resetScoreFun;
  Result(this.rsultScore,this.resetScoreFun);


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            'Questions are over $rsultScore',
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
          ),
          FlatButton(
            onPressed: resetScoreFun,
            child: Text('Reset'),
            textColor: Colors.amber,
          ),
        ],
      ),
    );
  }
}
