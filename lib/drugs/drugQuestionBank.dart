import 'package:flutter/material.dart';
import '../questionModel.dart';
import 'drugResults.dart';
import '../main.dart';

class DrugQuizBrain {
  int questionNumber = 0;
  int score = 0;
  String pickedAnswer = "";

  List<Question> _drugQuestionBank = [
    //ToDO: Add proper questions
    Question('Question 1', ['A', 'B', 'C'], 'A'),
    Question('What is the leading case law on possession?',
        ['One', 'Two', 'Knowledge and control'], 'Knowledge and control'),
    Question('Is this the third question?', ['yes', 'no', 'maybe'], 'yes')
  ];

  void drugShuffle() {
    _drugQuestionBank.shuffle();
  }

  void nextQuestion() {
    if (questionNumber < _drugQuestionBank.length - 1) {
      questionNumber++;
    } else {
      navigatorKey.currentState.push(MaterialPageRoute(
        builder: (context) => ResultsPage(),
      ));
    }
  }

  void pickedOne() {
    pickedAnswer = _drugQuestionBank[questionNumber].questionAnswers[0];
  }

  void pickedTwo() {
    pickedAnswer = _drugQuestionBank[questionNumber].questionAnswers[1];
  }

  void pickedThree() {
    pickedAnswer = _drugQuestionBank[questionNumber].questionAnswers[2];
  }

  checkAnswer() {
    if (_drugQuestionBank[questionNumber].correctAnswer == pickedAnswer) {
      score++;
      //ToDO: Give positive feedback
      print(score);
    } else {
      //ToDO: Provide correct answer and negative feedback
      print(score);
    }
  }

  String getQuestionText() {
    return _drugQuestionBank[questionNumber].questionText;
  }

  List getWrongAnswers() {
    return _drugQuestionBank[questionNumber].questionAnswers;
  }

  String getCorrectAnswer() {
    return _drugQuestionBank[questionNumber].correctAnswer;
  }
}
