import 'package:flutter/material.dart';
import 'package:detective_trainer/questionModel.dart';
import 'package:detective_trainer/results.dart';
import 'package:detective_trainer/main.dart';
import 'package:detective_trainer/globals.dart';

class IncidentQuizBrain {
  String pickedAnswer = "";

  List<Question> _incidentQuestionBank = [
    Question(
        'What is a crime scene?',
        [
          'A crime scene threshold offence happened at the place or there may be evidence at the place of significant probative value of the commission of a crime scene threshold offence.',
          'An indictable offence for which the maximum penalty is at least 7 years imprisonment has occurred at a place.',
          'A crime scene is any place where a significant crime or major incident has occurred and there exists a need to preserve evidence.'
        ],
        'A crime scene threshold offence happened at the place or there may be evidence at the place of significant probative value of the commission of a crime scene threshold offence.'),
    Question(
        'A crime scene threshold offence is defined as?',
        [
          'An indictable offence or an offence involving deprivation of liberty.',
          'An indictable offence for which the maximum penalty is at least 7 years imprisonment or an offence involving deprivation of liberty.',
          'An indictable offence for which the maximum penalty is at least 4 years imprisonment or an offence involving deprivation of liberty.'
        ],
        'An indictable offence for which the maximum penalty is at least 4 years imprisonment or an offence involving deprivation of liberty.'),
    Question(
        'A crime scene can be declared at a place. What is defined as a place?',
        [
          'Dwelling, premises, vacant land and any public place.',
          'Premises, vacant land, vehicle, Queensland waters or a place held under 2 or more titles or by 2 or more owners.',
          'Buildings, land, water, vehicles, a tent or cave and a premises held under 2 or more titles or owners.'
        ],
        'Premises, vacant land, vehicle, Queensland waters or a place held under 2 or more titles or by 2 or more owners.'),
    Question(
        'Section 164 of the PPRA gives Police power to access crime scenes. Which of these is NOT a power under this section',
        [
          'Enter a place that the police officer reasonably suspects is a crime scene',
          'Detain anyone found at the place',
          'Stay on a place for the time reasonably necessary to decide whether or not to establish a crime scene'
        ],
        'Detain anyone found at the place'),
    Question(
        'As soon as a crime scene is established the PPRA places certain requirements upon the responsible officer. Which of the following is one of the requirements?',
        [
          'As soon as reasonably practicable a police officer must apply to a Supreme Court Judge or Magistrate for the crime scene warrant',
          'Identify the limits of the scene and mark it out with crime scene tape.',
          'Ensure the occupants of the place are happy for Police to establish a crime scene'
        ],
        'As soon as reasonably practicable a police officer must apply to a Supreme Court Judge or Magistrate for the crime scene warrant'),
    Question(
        'When deciding the limits of a crime scene the responsible officer should consider...?',
        [
          'Contacting an officer with the rank of Sergeant or higher to get advice.',
          'Location and access to power and running water.',
          'The boundaries necessary to protect the crime scene and mark the limits of the crime scene.'
        ],
        'The boundaries necessary to protect the crime scene and mark the limits of the crime scene.'),
    Question(
        'As soon as reasonably practicable after establishing a crime scene in a place other than a public place a Police officer must apply for a what?',
        ['Search warrant', 'Crime scene warrant', 'Arrest warrant'],
        'Crime scene warrant'),
    Question(
        'Public place is defined in Schedule 6 of the PPRA. For the purposes of declaring a crime scene which of the following is not a public place',
        [
          'A road that is closed to general use by vehicles for a public procession or a parade',
          'A cinema complex',
          'A persons home'
        ],
        'A persons home'),
    Question(
      'A crime scene warrant stops having effect when?',
      [
        'On the day fixed under the warrant',
        'Seven days later',
        'A crime scene warrant expires Police finish processing the scene'
      ],
      'On the day fixed under the warrant'
    ),
    Question(
      'Police wish to extend a crime scene warrant. Who can hear the application?', 
      [
        'Any Magistrate or Supreme Court Judge',
        'The Magistrate or Supreme Court Judge who issued the initial crime scene warrant',
        'A justice of the peace at the Court house'
      ], 
      'The Magistrate or Supreme Court Judge who issued the initial crime scene warrant'),
    Question(
      'Which of the following is not a crime scene power?', 
      [
        'Take electricity for use at the crime scene',
        'Detain anyone located in a crime scene',
        'Remove wall or ceiling linings or floors of a building, or panels or fittings of a vehicle'
        ], 
      'Detain anyone located in a crime scene'),
     Question(
       'True or False. Deprivation of Liberty is defined as any person who unlawfully confines or detains another in any place against the other persons will or otherwise unlawfully deprives another of the other persons personal liberty', 
      [
        'True',
        'False',
        ''
      ], 
      'True'),
      Question(
        'True or False. A crime scene warrant can be extended past 7 days.', 
        ['True',
        'False',
        ''
        
        ],
        'True') 
  ];

  BuildContext get context => null;

  void incidentShuffle() {
    _incidentQuestionBank.shuffle();
  }

  void nextQuestion() {
    if (questionNumber < _incidentQuestionBank.length - 1) {
      questionNumber++;
    } else {
      navigatorKey.currentState.push(MaterialPageRoute(
        
        builder: (context) => ResultsPage(),
      ));
    }
  }

  void pickedOne() {
    pickedAnswer = _incidentQuestionBank[questionNumber].questionAnswers[0];
  }

  void pickedTwo() {
    pickedAnswer = _incidentQuestionBank[questionNumber].questionAnswers[1];
  }

  void pickedThree() {
    pickedAnswer = _incidentQuestionBank[questionNumber].questionAnswers[2];
  }

  checkAnswer() {
    if (_incidentQuestionBank[questionNumber].correctAnswer == pickedAnswer) {
      score++;
      print(score);

    } else {
      print(score);

    }
  }

  Icon feedbackIcon() {
    if (_incidentQuestionBank[questionNumber - 1].correctAnswer == pickedAnswer) {
      return Icon(Icons.check_circle_rounded,
                color: Colors.green,);

    } else {
      return Icon(Icons.cancel_rounded,
          color: Colors.red,);
    }
  }

  String getQuestionText() {
    return _incidentQuestionBank[questionNumber].questionText;
  }

  List getWrongAnswers() {
    return _incidentQuestionBank[questionNumber].questionAnswers;
  }

  String getCorrectAnswer() {
    return _incidentQuestionBank[questionNumber].correctAnswer;
  }

  String correctAnswerForSnack() {
    return _incidentQuestionBank[questionNumber - 1].correctAnswer;
  }

  int magicNumber() {
    return _incidentQuestionBank.length - 1;
  }

  }
  



