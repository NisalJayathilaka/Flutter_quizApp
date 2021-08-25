import 'package:flutter/material.dart';

import 'package:quizeproject/question.dart';
import 'anwser.dart';

class Quiz extends StatelessWidget {
   final List<Map<String ,dynamic>> questions;
   final Function anwserQuestion;
   final int quationIndex;
  Quiz(this.anwserQuestion,this.questions,this.quationIndex);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
            children: [
              Questions(
                questions[quationIndex]['questionsText'],
              ),
              SizedBox(
                height: 10.0,
              ),
              ...(questions[quationIndex]['anwsers'] as List<Map<String,dynamic>>)
                  .map((anwsers) {
                return Anwsers(()=>anwserQuestion(anwsers['score']), anwsers['text']);
              }).toList(),
            ],
          )
    );
  }
}