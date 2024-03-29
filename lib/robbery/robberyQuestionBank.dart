import 'package:flutter/material.dart';
import 'package:detective_trainer/questionModel.dart';
import 'package:detective_trainer/results.dart';
import 'package:detective_trainer/main.dart';
import 'package:detective_trainer/globals.dart';

class RobberyQuizBrain {
  String pickedAnswer = "";

  List<Question> _robberyQuestionBank = [
    //ToDO: Add proper questions
    Question('Question 1', ['A', 'B', 'C'], 'A'),
    Question('What is the leading case law on possession?',
        ['One', 'Two', 'Knowledge and control'], 'Knowledge and control'),
    Question('Is this the third question?', ['yes', 'no', 'maybe'], 'yes'),
    Question('Have you ever been robbed?', ['Yes', 'No', 'Hell No'], 'No')
  ];

  void robberyShuffle() {
    _robberyQuestionBank.shuffle();
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
    pickedAnswer = _robberyQuestionBank[questionNumber].questionAnswers[0];
  }

  void pickedTwo() {
    pickedAnswer = _robberyQuestionBank[questionNumber].questionAnswers[1];
  }

  void pickedThree() {
    pickedAnswer = _robberyQuestionBank[questionNumber].questionAnswers[2];
  }

  checkAnswer() {
    if (_robberyQuestionBank[questionNumber].correctAnswer == pickedAnswer) {
      score++;
      
      print(score);
    } else {
      
      print(score);
    }
  }

  Icon feedbackIcon() {
    if (_robberyQuestionBank[questionNumber - 1].correctAnswer == pickedAnswer) {
      return Icon(Icons.check_circle_rounded,
                color: Colors.green,);

    } else {
      return Icon(Icons.cancel_rounded,
          color: Colors.red,);
    }
  }

  String getQuestionText() {
    return _robberyQuestionBank[questionNumber].questionText;
  }

  List getWrongAnswers() {
    return _robberyQuestionBank[questionNumber].questionAnswers;
  }

  String getCorrectAnswer() {
    return _robberyQuestionBank[questionNumber].correctAnswer;
  }

  String correctAnswerForSnack() {
    return _robberyQuestionBank[questionNumber - 1].correctAnswer;
  }

}
