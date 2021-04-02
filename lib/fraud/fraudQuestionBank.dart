import 'package:flutter/material.dart';
import 'package:detective_trainer/questionModel.dart';
import 'package:detective_trainer/results.dart';
import 'package:detective_trainer/main.dart';
import 'package:detective_trainer/globals.dart';

class FraudQuizBrain {
  String pickedAnswer = "";

  List<Question> _fraudQuestionBank = [
    //ToDO: Add proper questions
    Question('Question 1', ['A', 'B', 'C'], 'A'),
    Question('What is the leading case law on possession?',
        ['One', 'Two', 'Knowledge and control'], 'Knowledge and control'),
    Question('Is this the third question?', ['yes', 'no', 'maybe'], 'yes')
  ];

  void fraudShuffle() {
    _fraudQuestionBank.shuffle();
  }

  void nextQuestion() {
    if (questionNumber < _fraudQuestionBank.length - 1) {
      questionNumber++;
    } else {
      navigatorKey.currentState.push(MaterialPageRoute(
        builder: (context) => ResultsPage(),
      ));
    }
  }

  void pickedOne() {
    pickedAnswer = _fraudQuestionBank[questionNumber].questionAnswers[0];
  }

  void pickedTwo() {
    pickedAnswer = _fraudQuestionBank[questionNumber].questionAnswers[1];
  }

  void pickedThree() {
    pickedAnswer = _fraudQuestionBank[questionNumber].questionAnswers[2];
  }

  checkAnswer() {
    if (_fraudQuestionBank[questionNumber].correctAnswer == pickedAnswer) {
      score++;
      //ToDO: Give positive feedback
      print(score);
    } else {
      //ToDO: Provide correct answer and negative feedback
      print(score);
    }
  }

  String getQuestionText() {
    return _fraudQuestionBank[questionNumber].questionText;
  }

  List getWrongAnswers() {
    return _fraudQuestionBank[questionNumber].questionAnswers;
  }

  String getCorrectAnswer() {
    return _fraudQuestionBank[questionNumber].correctAnswer;
  }
}
