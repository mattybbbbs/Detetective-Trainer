import 'package:flutter/material.dart';
import '../questionModel.dart';
import '../results.dart';
import '../main.dart';
import 'package:detective_trainer/globals.dart';

class AssaultQuizBrain {
  String pickedAnswer = "";

  List<Question> _assaultQuestionBank = [
    //ToDO: Add proper questions
    Question('Question 1', ['A', 'B', 'C'], 'A'),
    Question('Question 2', ['D', 'E', 'F'], 'E'),
    Question('Question 3', ['G', 'H', 'I'], 'I')
  ];

  void assaultShuffle() {
    _assaultQuestionBank.shuffle();
  }

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
      //ToDO: Give positive feedback
      print(score);
    } else {
      //ToDO: Provide correct answer and negative feedback
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
