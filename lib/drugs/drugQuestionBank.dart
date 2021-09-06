import 'package:flutter/material.dart';
import '../questionModel.dart';
import '../results.dart';
import '../main.dart';
import 'package:detective_trainer/globals.dart';

class DrugQuizBrain {
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
    if (questionNumber < 9) {
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
      
      print(score);
    } else {
      
      print(score);
    }
  }

  Icon feedbackIcon() {
    if (_drugQuestionBank[questionNumber -1].correctAnswer == pickedAnswer) {
      return Icon(Icons.check_circle_rounded,
      color: Colors.green,);
    } else {
      return Icon(Icons.cancel_rounded,
      color: Colors.red,);
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

  String correctAnswerForSnack() {
    return _drugQuestionBank[questionNumber -1].correctAnswer;
  }

}
