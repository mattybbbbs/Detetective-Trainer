import 'dart:math';

import 'package:detective_trainer/globals.dart';
import 'package:flutter/material.dart';
import 'incidentManagementQuestionBank.dart';

IncidentQuizBrain incidentQuizBrain = IncidentQuizBrain();

class Incident extends StatefulWidget {
  @override
  _IncidentState createState() => _IncidentState();
}

class _IncidentState extends State<Incident> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Incident Management'),
        //ToDo: Add pic and hero animation
      ),
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
              color: Color.fromRGBO(
            37,
            45,
            75,
            1.0,
          )),
          child: ListView(
            
            scrollDirection: Axis.vertical,
            children: [
              
              Container(
                margin: EdgeInsets.all(15.0),
                height: 175.0,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white,
                    style: BorderStyle.solid,
                    width: 2.0,
                  ),
                ),
                child: Center(
                  child: Text(
                    incidentQuizBrain.getQuestionText(),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    incidentQuizBrain.pickedOne();
                    incidentQuizBrain.checkAnswer();
                    incidentQuizBrain.nextQuestion();
                    if (questionNumber < incidentQuizBrain.magicNumber()) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Row(children: [
                      incidentQuizBrain.feedbackIcon(),
                      Flexible(child: Text(incidentQuizBrain.correctAnswerForSnack()))
                    ],
                    ),
                    duration: Duration(seconds: 3),
                    ));
                    }
                    
            
                  });
                },
                child: Container(
                  margin: EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                      border: Border.all(
                    color: Colors.white,
                    style: BorderStyle.solid,
                    width: 2.0,
                  )),
                  height: 100.0,
                  child: Center(
                    child:
                        Text(incidentQuizBrain.getWrongAnswers()[0].toString(),
                        textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 15.0,
                              color: Colors.white,
                            )),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    incidentQuizBrain.pickedTwo();
                    incidentQuizBrain.checkAnswer();
                    incidentQuizBrain.nextQuestion();
                    if (questionNumber < incidentQuizBrain.magicNumber()) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Row(children: [
                      incidentQuizBrain.feedbackIcon(),
                      Flexible(child: Text(incidentQuizBrain.correctAnswerForSnack()))
                    ],
                    ),
                    duration: Duration(seconds: 3),
                    ));
                    }
                  });
                },
                child: Container(
                  margin: EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                      border: Border.all(
                    color: Colors.white,
                    style: BorderStyle.solid,
                    width: 2.0,
                  )),
                  height: 100.0,
                  child: Center(
                    child: Text(
                      incidentQuizBrain.getWrongAnswers()[1].toString(),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.0,
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    incidentQuizBrain.pickedThree();
                    incidentQuizBrain.checkAnswer();
                    incidentQuizBrain.nextQuestion();
                    if (questionNumber < incidentQuizBrain.magicNumber()) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Row(children: [
                      incidentQuizBrain.feedbackIcon(),
                      Flexible(child: Text(incidentQuizBrain.correctAnswerForSnack()))
                    ],),
                    duration: Duration(seconds: 3),
                    )
                    );
                    }
                  });
                },
                child: Visibility(
                  visible: incidentQuizBrain.getWrongAnswers()[2].toString() != ""
                  ,
                                  child: Container(
                    margin: EdgeInsets.all(15.0),
                    decoration: BoxDecoration(
                        border: Border.all(
                      color: Colors.white,
                      style: BorderStyle.solid,
                      width: 2.0,
                    )),
                    height: 100.0,
                    child: Center(
                      child: Text(
                        incidentQuizBrain.getWrongAnswers()[2].toString(),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
// class SnackBarCorrect extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return SnackBar(content: Row(
//       children: [
//       Icon(Icons.check_circle_rounded,
//                 color: Colors.green,),
//                 Text('Correct Snacks'),
//     ],),);
//   }
// }

// class SnackBarWrong extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return SnackBar(content: Row(
//         children: [
//           Icon(Icons.cancel_rounded,
//           color: Colors.red,),
//           Text('Wrong Snacks'),
//         ],),);
//   }
// }



