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
    if (questionNumber < 9) {
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
      print(score);
      print(questionNumber);
    } else {
      print(score);
      print(questionNumber);
    }
  }

  Icon feedbackIcon() {
    if (_offenderIdQuestionBank[questionNumber -1].correctAnswer == pickedAnswer) {
      return Icon(Icons.check_circle_rounded,
      color: Colors.green,);

      }
      else {
        return Icon(Icons.cancel_rounded,
        color: Colors.red,);
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

  String correctAnswerForSnack() {
    return _offenderIdQuestionBank[questionNumber -1].correctAnswer;
  }
}
