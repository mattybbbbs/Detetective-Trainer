import 'package:flutter/material.dart';
import 'package:detective_trainer/questionModel.dart';
import 'package:detective_trainer/results.dart';
import 'package:detective_trainer/main.dart';
import 'package:detective_trainer/globals.dart';

class MechanicsQuizBrain {
  String pickedAnswer = "";

  List<Question> _mechanicsQuestionBank = [
    //ToDO: Add proper questions
    Question('Which of the following is not a party to an offence?', ['Doer', 'Aider', 'Instigator'], 'Instigator'),
    Question('Which of the following is not a party to an offence?', ['Enabler', 'Motivator', 'Counsellor'], 'Motivator'),
    Question('Section 7 of the Criminal Code describes parties to offences. They are?', ['Doer, Aider, Enabler and Counsellor', 'Doer, Helper, Enabler and Procurer', 'Doer, Aider, Liaison and Counsellor'], 'Doer, Aider, Enabler and Counsellor'),
    Question('What is the leading case law on Doer?', ['R v Wyles', 'Borg v R', 'Stuart v R'], 'R v Wyles'),
    Question('What is the leading case law on Enabler?', ['Beck v R', 'Borg v R', 'R v Wyles'], 'Borg v R'),
    Question('True or False? To charge someone with being a party to the offence as an Aider it is necessary to prove that the person knew what offence was or might be committed?', ['True', 'False', ''], 'True'),
    Question('What is the leading case law on Aider', ['Borg v R', 'Stuart v R', 'Beck v R'], 'Beck v R'),
    Question('True or False? Under section 7(1)(c) - the aider - criminal responsibility only extends to the actual offence for which the aid is intentionally provided, not subsequent consequences', ['True', 'False', ''], 'True'),
    Question('What is the leading case law on Counsellor?', ['R v Wyles', 'Stuart v R', 'Borg v R'], 'Stuart v R'),
    Question('True or False? Offences committed in prosecution of common purpose require two or more persons to form a common intention to prosecute an unlawful purpose. In the prosecution of such purpose an offence is committed of such nature that its commission was a probable consequence', ['True', 'False', ''], 'True'),
    Question('What is the leading case law on s8 offences committed in prosecution of common purpose?', ['R v Wyles', 'Stuart v R', 'The Queen v Keenan'], 'The Queen v Keenan'),
    Question('True or False? s9 - Mode of execution immaterial means the counsellor is only criminally responsible for acts done by the doer when they follow the counsellors instructions exactly', ['True', 'False', ''], 'False'),
    Question('True or False? An accessory after the fact is someone who is criminally responsible because they knowingly assist another person who guilty of an offence in order for the person to escape punishment?', ['True', 'False', ''], 'True'),
    Question('True or False? s4 of the Criminal Code deals with attempts to commit offences. A person is deemed to have attempted to commit an offence once they intend to commit an offence and begin to put their intention into execution by means of an overt act?', ['True', 'False', ''], 'True'),
    Question('The elements of attempts are?', ['Proposal, Prepare, Perform & Problem', 'Plan, Prepare, Perform & Problem', 'Plan, Procure, Produce & Problem'], 'Plan, Prepare, Perform & Problem'),
    Question('True or False? An offender is not criminally responsible if they were unaware what they were doing was an offence under section 22 Ignorance of the law?', ['True', 'False', ''], 'False'),
    Question('True or False? An offender has a legal defence under section 22 Bona Fide Claim of Right if they commit an offence in relation to property with the honest but mistaken belief that they were the owner of it?', ['True', 'False', ''], 'True'),
    Question('True or False? Section 24 of the Criminal Code mistake of fact provides a defence for acts done under an honest and reasonable but mistaken belief?', ['True', 'False', ''], 'True'),
    Question('True or False? Section 25 of the Criminal Code extraordinary emergency provides a defence for acts done under circumstances of sudden or extraordinary emergencies.', ['True', 'False', ''], 'True'),
    Question('True or False? All persons are deemed to be of sound mind until the contrary is proved.', ['True', 'False', ''], 'True'),
    Question('True of False? Section 27 of the Criminal Code insanity provides a defence that at the time of committing an offence the person was in such a state of mental disease to deprive the person of capacity to understand what the person was doing?', ['True', 'False', ''], 'True'),
    Question('True of False? Police can choose not the charge an offender if the offender has mental health issues citing section 27 - Insanity?', ['True', 'False', ''], 'False'),
    Question('True or False? Section 28 of the Criminal Code intoxication provides a defence for any person intoxicated or stupefied by alcohol or drugs?', ['True', 'False', ''], 'False'),
    Question('True or False? For an offender to rely on a defence of intoxication the offender must not have intentionally caused thier intoxication?', ['True', 'False', ''], 'True'),
    Question('True or False? A child under the age of 10 is not criminally responsible?', ['True', 'False', ''], 'True'),
    Question('True or False? A child who is 14 and older is criminally responsible?', ['True', 'False', ''], 'True'),
    Question('A child is only criminally responsible if Police can prove the child had requisite capacity for what age group?', ['Less than 10 years old', '10 to 13 years old', '14 years and older'], '10 to 13 years old')
  ];

  void mechanicsShuffle() {
    _mechanicsQuestionBank.shuffle();
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
    pickedAnswer = _mechanicsQuestionBank[questionNumber].questionAnswers[0];
  }

  void pickedTwo() {
    pickedAnswer = _mechanicsQuestionBank[questionNumber].questionAnswers[1];
  }

  void pickedThree() {
    pickedAnswer = _mechanicsQuestionBank[questionNumber].questionAnswers[2];
  }

  checkAnswer() {
    if (_mechanicsQuestionBank[questionNumber].correctAnswer == pickedAnswer) {
      score++;
      print(score);
      print(questionNumber);
    } else {
      print(score);
      print(questionNumber);
    }
  }

  Icon feedbackIcon() {
    if (_mechanicsQuestionBank[questionNumber - 1].correctAnswer == pickedAnswer) {
      return Icon(Icons.check_circle_rounded,
      color: Colors.green,);
    } else {
      return Icon(Icons.cancel_rounded,
      color: Colors.red,);
    }
  }

  String getQuestionText() {
    return _mechanicsQuestionBank[questionNumber].questionText;
  }

  List getWrongAnswers() {
    return _mechanicsQuestionBank[questionNumber].questionAnswers;
  }

  String getCorrectAnswer() {
    return _mechanicsQuestionBank[questionNumber].correctAnswer;
  }

  String correctAnswerForSnack() {
    return _mechanicsQuestionBank[questionNumber - 1].correctAnswer;
  }

  // int magicNumber() {
  //   return _mechanicsQuestionBank.length -1;
  // }
}
