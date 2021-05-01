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
      
      print(score);
    } else {
      
      print(score);
    }
  }

  Icon feedbackIcon() {
    if (_assaultQuestionBank[questionNumber - 1].correctAnswer == pickedAnswer) {
      return Icon(Icons.check_circle_rounded,
                color: Colors.green,);

    } else {
      return Icon(Icons.cancel_rounded,
          color: Colors.red,);
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

  String correctAnswerForSnack() {
    return _assaultQuestionBank[questionNumber - 1].correctAnswer;
  }

  int magicNumber() {
    return _assaultQuestionBank.length - 1;
  }
}
