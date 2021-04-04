import 'package:flutter/material.dart';
import 'package:detective_trainer/questionModel.dart';
import 'package:detective_trainer/results.dart';
import 'package:detective_trainer/main.dart';
import 'package:detective_trainer/globals.dart';

class SearchingQuizBrain {
  String pickedAnswer = "";

  List<Question> _searchingQuestionBank = [
    //ToDO: Add proper questions
    Question('Question 1', ['A', 'B', 'C'], 'A'),
    Question('What is the leading case law on possession?',
        ['One', 'Two', 'Knowledge and control'], 'Knowledge and control'),
    Question('Is this the third question?', ['yes', 'no', 'maybe'], 'yes')
  ];

  void searchingShuffle() {
    _searchingQuestionBank.shuffle();
  }

  void nextQuestion() {
    if (questionNumber < _searchingQuestionBank.length - 1) {
      questionNumber++;
    } else {
      navigatorKey.currentState.push(MaterialPageRoute(
        builder: (context) => ResultsPage(),
      ));
    }
  }

  void pickedOne() {
    pickedAnswer = _searchingQuestionBank[questionNumber].questionAnswers[0];
  }

  void pickedTwo() {
    pickedAnswer = _searchingQuestionBank[questionNumber].questionAnswers[1];
  }

  void pickedThree() {
    pickedAnswer = _searchingQuestionBank[questionNumber].questionAnswers[2];
  }

  checkAnswer() {
    if (_searchingQuestionBank[questionNumber].correctAnswer == pickedAnswer) {
      score++;
      //ToDO: Give positive feedback
      print(score);
    } else {
      //ToDO: Provide correct answer and negative feedback
      print(score);
    }
  }

  Icon feedbackIcon() {
    if (_searchingQuestionBank[questionNumber - 1].correctAnswer == pickedAnswer) {
      return Icon(Icons.check_circle_rounded,
                color: Colors.green,);

    } else {
      return Icon(Icons.cancel_rounded,
          color: Colors.red,);
    }
  }

  String getQuestionText() {
    return _searchingQuestionBank[questionNumber].questionText;
  }

  List getWrongAnswers() {
    return _searchingQuestionBank[questionNumber].questionAnswers;
  }

  String getCorrectAnswer() {
    return _searchingQuestionBank[questionNumber].correctAnswer;
  }

  String correctAnswerForSnack() {
    return _searchingQuestionBank[questionNumber - 1].correctAnswer;
  }

  int magicNumber() {
    return _searchingQuestionBank.length - 1;
  }

}
