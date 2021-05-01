import 'package:flutter/material.dart';
import 'package:detective_trainer/questionModel.dart';
import 'package:detective_trainer/results.dart';
import 'package:detective_trainer/main.dart';
import 'package:detective_trainer/globals.dart';

class SexQuizBrain {
  String pickedAnswer = "";

  List<Question> _sexQuestionBank = [
    //ToDO: Add proper questions
    Question('Question 1', ['A', 'B', 'C'], 'A'),
    Question('What is the leading case law on possession?',
        ['One', 'Two', 'Knowledge and control'], 'Knowledge and control'),
    Question('Is this the third question?', ['yes', 'no', 'maybe'], 'yes')
  ];

  void sexShuffle() {
    _sexQuestionBank.shuffle();
  }

  void nextQuestion() {
    if (questionNumber < _sexQuestionBank.length - 1) {
      questionNumber++;
    } else {
      navigatorKey.currentState.push(MaterialPageRoute(
        builder: (context) => ResultsPage(),
      ));
    }
  }

  void pickedOne() {
    pickedAnswer = _sexQuestionBank[questionNumber].questionAnswers[0];
  }

  void pickedTwo() {
    pickedAnswer = _sexQuestionBank[questionNumber].questionAnswers[1];
  }

  void pickedThree() {
    pickedAnswer = _sexQuestionBank[questionNumber].questionAnswers[2];
  }

  checkAnswer() {
    if (_sexQuestionBank[questionNumber].correctAnswer == pickedAnswer) {
      score++;
      
      print(score);
    } else {
      
      print(score);
    }
  }

  Icon feedbackIcon() {
    if (_sexQuestionBank[questionNumber - 1].correctAnswer == pickedAnswer) {
      return Icon(Icons.check_circle_rounded,
                color: Colors.green,);

    } else {
      return Icon(Icons.cancel_rounded,
          color: Colors.red,);
    }
  }

  String getQuestionText() {
    return _sexQuestionBank[questionNumber].questionText;
  }

  List getWrongAnswers() {
    return _sexQuestionBank[questionNumber].questionAnswers;
  }

  String getCorrectAnswer() {
    return _sexQuestionBank[questionNumber].correctAnswer;
  }

String correctAnswerForSnack() {
    return _sexQuestionBank[questionNumber - 1].correctAnswer;
  }

  int magicNumber() {
    return _sexQuestionBank.length - 1;
  }  
}
