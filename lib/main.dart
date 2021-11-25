import 'package:flutter/material.dart';
import 'package:quiz_app/result.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());


class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp>{
//const MyApp({Key? key}) : super(key: key);
  final _questions = const[
    {
      'questionText':'What\'s your favorite color?',
      'answers': [
        {'text':'Black','score':10},
        {'text':'Red','score':8},
        {'text':'Green','score':6},
        {'text':'White', 'score':4}
        ],
    },
    {
      'questionText':'What\'s your favortie animal?',
      'answers': [
        {'text':'Rabbit','score':3},
        {'text':'Snake','score':11},
        {'text':'Elephant','score':5},
        {'text':'Lion','score':9},
      ],
    },
    {
      'questionText':'What\'s your favorite alphabet letter?',
      'answers': [
        {'text':'A','score':1},
        {'text':'B','score':1},
        {'text':'C','score':1},
        {'text':'D','score':1},
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz(){
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score){
    _totalScore += score;

    if(_questionIndex < _questions.length){

    }
    setState((){
      _questionIndex +=1;
    });


    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("My App"),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(answerQuestion: _answerQuestion,questionIndex: _questionIndex,questions: _questions,)
              : Result(_totalScore,_resetQuiz)
      )
    );
  }
}
