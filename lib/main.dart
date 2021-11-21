import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());


class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp>{
//const MyApp({Key? key}) : super(key: key);
  var _questionIndex = 0;
  void _answerQuestion(){
    setState((){
      _questionIndex +=1;
    });


    print(_questionIndex);
  }



  @override
  Widget build(BuildContext context) {
    var questions = [
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

    return  MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("My App"),
          ),
          body: Column(
            children: [
              Question(questions[_questionIndex]['questionText'] as String
              ),
              ...(questions[_questionIndex]['answers'] as List<String>).map((answer){

                return Answer(_answerQuestion, answer);
              }).toList()

            ],
          )
      ),
    );
  }
}
