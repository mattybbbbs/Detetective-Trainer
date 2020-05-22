import 'package:detective_trainer/drugQuestions.dart';

import 'questionModel.dart';

class DrugQuizBrain {
  int questionNumber = 0;

  List<Question> _drugQuestionBank = [
    Question('What is bad?', ['Drugs', 'Money', 'Love'], 'Drugs'),
    Question('What is the leading case law on possession?',
        ['One', 'Two', 'Three'], 'Three'),
    Question('Is this the third question?', ['yes', 'no', 'maybe'], 'yes')
  ];

  void nextQuestion() {
    if (questionNumber < _drugQuestionBank.length - 1) {
      questionNumber++;
    }
  }

  void checkAnswer() {
    if (_drugQuestionBank[questionNumber].questionText ==
        _drugQuestionBank[questionNumber].correctAnswer) {
      print('Correct');
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
