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
      
      print(score);
    } else {
      
      print(score);
    }
  }

  Icon feedbackIcon() {
    if (_fraudQuestionBank[questionNumber - 1].correctAnswer == pickedAnswer) {
      return Icon(Icons.check_circle_rounded,
                color: Colors.green,);

    } else {
      return Icon(Icons.cancel_rounded,
          color: Colors.red,);
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

  String correctAnswerForSnack() {
    return _fraudQuestionBank[questionNumber - 1].correctAnswer;
  }

  int magicNumber() {
    return _fraudQuestionBank.length - 1;
  }
}
