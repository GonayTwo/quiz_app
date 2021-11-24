import 'package:flutter/material.dart';

import './quiz.dart';

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
      'answers': ['Black','Red','Green','White'],
    },
    {
      'questionText':'What\'s your favortie animal?',
      'answers': ['Rabbit','Snake','Elephant','Lion'],
    },
    {
      'questionText':'What\'s your favorite alphabet letter?',
      'answers': ['A','B','C','D'],
    },
  ];
  var _questionIndex = 0;
  void _answerQuestion(){
    var aBool = true;
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
              : Center(child: Text("We have no more questions!"))
      )
    )
  }
}
