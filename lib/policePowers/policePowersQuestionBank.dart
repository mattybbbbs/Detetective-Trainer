import 'package:detective_trainer/main.dart';
import 'package:detective_trainer/globals.dart';
import 'package:flutter/material.dart';
import 'package:detective_trainer/results.dart';
import 'package:detective_trainer/questionModel.dart';

class PolicePowersQuizBrain {
  String pickedAnswer = "";

  List<Question> _policePowersQuestionBank = [
    //ToDO: Add proper questions
    Question('Question 1', ['A', 'B', 'C'], 'A'),
    Question('Should Ted have married Robin', ['Maybe', 'No', 'Yes'], 'Yes'),
    Question('Is this the third question?', ['yes', 'no', 'maybe'], 'yes')
  ];

  void policePowersShuffle() {
    _policePowersQuestionBank.shuffle();
  }

  void nextQuestion() {
    if (questionNumber < _policePowersQuestionBank.length - 1) {
      questionNumber++;
    } else {
      navigatorKey.currentState.push(MaterialPageRoute(
        builder: (context) => ResultsPage(),
      ));
    }
  }

  void pickedOne() {
    pickedAnswer = _policePowersQuestionBank[questionNumber].questionAnswers[0];
  }

  void pickedTwo() {
    pickedAnswer = _policePowersQuestionBank[questionNumber].questionAnswers[1];
  }

  void pickedThree() {
    pickedAnswer = _policePowersQuestionBank[questionNumber].questionAnswers[2];
  }

  checkAnswer() {
    if (_policePowersQuestionBank[questionNumber].correctAnswer ==
        pickedAnswer) {
      score++;
      //ToDO: Give positive feedback
      print(score);
    } else {
      //ToDO: Provide correct answer and negative feedback
      print(score);
    }
  }

  String getQuestionText() {
    return _policePowersQuestionBank[questionNumber].questionText;
  }

  List getWrongAnswers() {
    return _policePowersQuestionBank[questionNumber].questionAnswers;
  }

  String getCorrectAnswer() {
    return _policePowersQuestionBank[questionNumber].correctAnswer;
  }
}
