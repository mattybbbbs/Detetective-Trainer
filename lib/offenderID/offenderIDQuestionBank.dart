import 'package:flutter/material.dart';
import 'package:detective_trainer/questionModel.dart';
import 'package:detective_trainer/results.dart';
import 'package:detective_trainer/main.dart';
import 'package:detective_trainer/globals.dart';

class OffenderIdQuizBrain {
  String pickedAnswer = "";

  List<Question> _offenderIdQuestionBank = [
    //ToDO: Add proper questions
    Question('Question 1', ['A', 'B', 'C'], 'A'),
    Question('What is the leading case law on possession?',
        ['One', 'Two', 'Knowledge and control'], 'Knowledge and control'),
    Question('Is this the third question?', ['yes', 'no', 'maybe'], 'yes')
  ];

  void offenderIdShuffle() {
    _offenderIdQuestionBank.shuffle();
  }

  void nextQuestion() {
    if (questionNumber < _offenderIdQuestionBank.length - 1) {
      questionNumber++;
    } else {
      navigatorKey.currentState.push(MaterialPageRoute(
        builder: (context) => ResultsPage(),
      ));
    }
  }

  void pickedOne() {
    pickedAnswer = _offenderIdQuestionBank[questionNumber].questionAnswers[0];
  }

  void pickedTwo() {
    pickedAnswer = _offenderIdQuestionBank[questionNumber].questionAnswers[1];
  }

  void pickedThree() {
    pickedAnswer = _offenderIdQuestionBank[questionNumber].questionAnswers[2];
  }

  checkAnswer() {
    if (_offenderIdQuestionBank[questionNumber].correctAnswer == pickedAnswer) {
      score++;
      //ToDO: Give positive feedback
      print(score);
    } else {
      //ToDO: Provide correct answer and negative feedback
      print(score);
    }
  }

  String getQuestionText() {
    return _offenderIdQuestionBank[questionNumber].questionText;
  }

  List getWrongAnswers() {
    return _offenderIdQuestionBank[questionNumber].questionAnswers;
  }

  String getCorrectAnswer() {
    return _offenderIdQuestionBank[questionNumber].correctAnswer;
  }
}