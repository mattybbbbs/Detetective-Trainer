import 'package:flutter/material.dart';
import 'package:detective_trainer/questionModel.dart';
import 'package:detective_trainer/results.dart';
import 'package:detective_trainer/main.dart';
import 'package:detective_trainer/globals.dart';

class CriminalLawQuizBrain {
  String pickedAnswer = "";

  List<Question> _criminalLawQuestionBank = [
    Question('Question 1', ['1', '2', '3'], '1'),
    Question('Question 2', ['A', 'B', 'C'], 'B'),
    Question('Question 3', ['D', 'E', 'F'], 'F'),
  ];

  String getQuestionText() {
    return _criminalLawQuestionBank[questionNumber].questionText;
  }

  void criminalLawShuffle() {
    _criminalLawQuestionBank.shuffle();
  }

  void nextQuestion() {
    if (questionNumber < _criminalLawQuestionBank.length - 1) {
      questionNumber++;
    } else {
      navigatorKey.currentState
          .push(MaterialPageRoute(builder: (context) => ResultsPage()));
    }
  }

  void pickedOne() {
    pickedAnswer = _criminalLawQuestionBank[questionNumber].questionAnswers[0];
  }

  void pickedTwo() {
    pickedAnswer = _criminalLawQuestionBank[questionNumber].questionAnswers[1];
  }

  void pickedThree() {
    pickedAnswer = _criminalLawQuestionBank[questionNumber].questionAnswers[2];
  }

  checkAnswer() {
    if (_criminalLawQuestionBank[questionNumber].correctAnswer ==
        pickedAnswer) {
      score++;
      print(score);
    } else {
      print(score);
    }
  }

  List getWrongAnswers() {
    return _criminalLawQuestionBank[questionNumber].questionAnswers;
  }

  String getCorrectAnswer() {
    return _criminalLawQuestionBank[questionNumber].correctAnswer;
  }
}
