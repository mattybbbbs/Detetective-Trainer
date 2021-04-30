import 'package:flutter/material.dart';
import 'package:detective_trainer/questionModel.dart';
import 'package:detective_trainer/results.dart';
import 'package:detective_trainer/main.dart';
import 'package:detective_trainer/globals.dart';

class ObjectionsQuizBrain {
  String pickedAnswer = "";

  List<Question> _objectionsQuestionBank = [
    //ToDO: Add proper questions
    Question('Question 1', ['A', 'B', 'C'], 'A'),
    Question('What is the leading case law on possession?',
        ['One', 'Two', 'Knowledge and control'], 'Knowledge and control'),
    Question('Is this the third question?', ['yes', 'no', 'maybe'], 'yes')
  ];

  void objectionsShuffle() {
    _objectionsQuestionBank.shuffle();
  }

  void nextQuestion() {
    if (questionNumber < _objectionsQuestionBank.length - 1) {
      questionNumber++;
    } else {
      navigatorKey.currentState.push(MaterialPageRoute(
        builder: (context) => ResultsPage(),
      ));
    }
  }

  void pickedOne() {
    pickedAnswer = _objectionsQuestionBank[questionNumber].questionAnswers[0];
  }

  void pickedTwo() {
    pickedAnswer = _objectionsQuestionBank[questionNumber].questionAnswers[1];
  }

  void pickedThree() {
    pickedAnswer = _objectionsQuestionBank[questionNumber].questionAnswers[2];
  }

  checkAnswer() {
    if (_objectionsQuestionBank[questionNumber].correctAnswer == pickedAnswer) {
      score++;
      
      print(score);
    } else {
      
      print(score);
    }
  }

  Icon feedbackIcon() {
    if (_objectionsQuestionBank[questionNumber -1].correctAnswer == pickedAnswer) {
      return Icon(Icons.check_circle_rounded,
      color: Colors.green,);
    }
    else {
      return Icon(Icons.cancel_rounded,
      color: Colors.red,);
    }
  }

  String getQuestionText() {
    return _objectionsQuestionBank[questionNumber].questionText;
  }

  List getWrongAnswers() {
    return _objectionsQuestionBank[questionNumber].questionAnswers;
  }

  String getCorrectAnswer() {
    return _objectionsQuestionBank[questionNumber].correctAnswer;
  }

  String correctAnswerForSnack() {
    return _objectionsQuestionBank[questionNumber -1].correctAnswer;
  }

  int magicNumber() {
    return _objectionsQuestionBank.length -1;
  }
}
