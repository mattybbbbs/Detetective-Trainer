import 'package:detective_trainer/main.dart';
import 'package:detective_trainer/drugs/drugResults.dart';
import 'package:flutter/material.dart';
import '../main.dart';
import '../questionModel.dart';

class AssaultQuizBrain {
  int questionNumber = 0;
  int score = 0;
  String pickedAnswer = "";

  List<Question> _assaultQuestionBank = [
    Question('Question 1', ['A', 'B', 'C'], 'A'),
    Question('Question 2', ['D', 'E', 'F'], 'F'),
  ];

  void nextQuestion() {
    if (questionNumber < _assaultQuestionBank.length - 1) {
      questionNumber++;
    } else {
      navigatorKey.currentState.push(MaterialPageRoute(
        builder: (context) => ResultsPage(),
      ));
    }
  }

  void pickedOne() {
    pickedAnswer = _assaultQuestionBank[questionNumber].questionAnswers[0];
  }

  void pickedTwo() {
    pickedAnswer = _assaultQuestionBank[questionNumber].questionAnswers[1];
  }

  void pickedThree() {
    pickedAnswer = _assaultQuestionBank[questionNumber].questionAnswers[2];
  }

  checkAnswer() {
    if (_assaultQuestionBank[questionNumber].correctAnswer == pickedAnswer) {
      score++;
      print(score);
    } else {
      print(score);
    }
  }

  String getQuestionText() {
    return _assaultQuestionBank[questionNumber].questionText;
  }

  List getWrongAnswers() {
    return _assaultQuestionBank[questionNumber].questionAnswers;
  }

  String getCorrectAnswer() {
    return _assaultQuestionBank[questionNumber].correctAnswer;
  }
}
