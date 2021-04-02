import 'package:flutter/material.dart';
import 'package:detective_trainer/questionModel.dart';
import 'package:detective_trainer/results.dart';
import 'package:detective_trainer/main.dart';
import 'package:detective_trainer/globals.dart';

class MechanicsQuizBrain {
  String pickedAnswer = "";

  List<Question> _mechanicsQuestionBank = [
    //ToDO: Add proper questions
    Question('Question 1', ['A', 'B', 'C'], 'A'),
    Question('Monkeys eat', ['Apples', 'Bananas', 'Carrots'], 'Bananas'),
    Question('Is this the third question?', ['yes', 'no', 'maybe'], 'yes')
  ];

  void mechanicsShuffle() {
    _mechanicsQuestionBank.shuffle();
  }

  void nextQuestion() {
    if (questionNumber < _mechanicsQuestionBank.length - 1) {
      questionNumber++;
    } else {
      navigatorKey.currentState.push(MaterialPageRoute(
        builder: (context) => ResultsPage(),
      ));
    }
  }

  void pickedOne() {
    pickedAnswer = _mechanicsQuestionBank[questionNumber].questionAnswers[0];
  }

  void pickedTwo() {
    pickedAnswer = _mechanicsQuestionBank[questionNumber].questionAnswers[1];
  }

  void pickedThree() {
    pickedAnswer = _mechanicsQuestionBank[questionNumber].questionAnswers[2];
  }

  checkAnswer() {
    if (_mechanicsQuestionBank[questionNumber].correctAnswer == pickedAnswer) {
      score++;
      //ToDO: Give positive feedback
      print(score);
    } else {
      //ToDO: Provide correct answer and negative feedback
      print(score);
    }
  }

  String getQuestionText() {
    return _mechanicsQuestionBank[questionNumber].questionText;
  }

  List getWrongAnswers() {
    return _mechanicsQuestionBank[questionNumber].questionAnswers;
  }

  String getCorrectAnswer() {
    return _mechanicsQuestionBank[questionNumber].correctAnswer;
  }
}
