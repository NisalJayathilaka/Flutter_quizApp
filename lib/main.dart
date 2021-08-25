import 'package:flutter/material.dart';

import 'package:quizeproject/quiz.dart';
import 'package:quizeproject/result.dart';



void main(List<String> args) {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('assaAAbb'),
        ),
        body: MyApp(),
      ),
    ),
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  List<Map<String, dynamic>> _questions = [
    {
      'questionsText': 'what is your name',
      'anwsers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 8},
        {'text': 'Green', 'score': 6},
        {'text': 'White', 'score': 2},
      ]
    },
    {
      'questionsText': 'what is animal name',
      'anwsers': [
        {'text': 'bbb', 'score': 10},
        {'text': 'Aa', 'score': 1},
        {'text': 'MMM', 'score': 5},
        {'text': 'LKKK', 'score': 7},
      ]
    },
    {
      'questionsText': 'what is school name',
      'anwsers': [
        {'text': 'Sri', 'score': 10},
        {'text': 'Red', 'score': 10},
        {'text': 'Suman', 'score': 10},
        {'text': 'Gala', 'score': 10},
      ]
    },
  ];
  int _questionIndex = 0;
  int _tottaolScore =0;
  void _anwserQuestion(int scoreo) {
    _tottaolScore +=scoreo;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  void _resetSocre()
  {
    setState(() {
      _questionIndex = 0;
      _tottaolScore =0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return _questionIndex < _questions.length
        ? Quiz(_anwserQuestion, _questions, _questionIndex)
        : Result(_tottaolScore,_resetSocre);
  }
}
