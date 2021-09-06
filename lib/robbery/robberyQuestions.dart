import 'package:flutter/material.dart';
import 'robberyQuestionBank.dart';
import 'package:detective_trainer/globals.dart';

RobberyQuizBrain robberyQuizBrain = RobberyQuizBrain();

class Robbery extends StatefulWidget {
  @override
  _RobberyState createState() => _RobberyState();
}

class _RobberyState extends State<Robbery> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(48, 71, 94, 1.0),
        title: Text('Property and Robbery',
        style: TextStyle(
          color: Color.fromRGBO(221, 221, 221, 1.0)
        ),),
        elevation: 0.0,
        //ToDo: Add pic and hero animation
      ),
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            color: Color.fromRGBO(48, 71, 94, 1.0)),
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              Container(
                margin: EdgeInsets.all(15.0),
                height: 180.0,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color.fromRGBO(240, 84, 84, 1.0),
                    style: BorderStyle.solid,
                    width: 2.0,
                  ),
                ),
                child: Center(
                  child: Text(
                    robberyQuizBrain.getQuestionText(),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Color.fromRGBO(221, 221, 221, 1.0),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    robberyQuizBrain.pickedOne();
                    robberyQuizBrain.checkAnswer();
                    robberyQuizBrain.nextQuestion();
                    if (questionNumber < 8) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Row(children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: robberyQuizBrain.feedbackIcon(),
                      ),
                      Flexible(child: Text(robberyQuizBrain.correctAnswerForSnack()))
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
                    color: Color.fromRGBO(240, 84, 84, 1.0),
                    style: BorderStyle.solid,
                    width: 2.0,
                  )),
                  height: 100.0,
                  child: Center(
                    child:
                        Text(robberyQuizBrain.getWrongAnswers()[0].toString(),
                        textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 15.0,
                              color: Color.fromRGBO(221, 221, 221, 1.0),
                            )),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    robberyQuizBrain.pickedTwo();
                    robberyQuizBrain.checkAnswer();
                    robberyQuizBrain.nextQuestion();
                    if (questionNumber < 8) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Row(children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: robberyQuizBrain.feedbackIcon(),
                      ),
                      Flexible(child: Text(robberyQuizBrain.correctAnswerForSnack()))
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
                    color: Color.fromRGBO(240, 84, 84, 1.0),
                    style: BorderStyle.solid,
                    width: 2.0,
                  )),
                  height: 100.0,
                  child: Center(
                    child: Text(
                      robberyQuizBrain.getWrongAnswers()[1].toString(),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Color.fromRGBO(221, 221, 221, 1.0),
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    robberyQuizBrain.pickedThree();
                    robberyQuizBrain.checkAnswer();
                    robberyQuizBrain.nextQuestion();
                    if (questionNumber < 8) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Row(children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: robberyQuizBrain.feedbackIcon(),
                      ),
                      Flexible(child: Text(robberyQuizBrain.correctAnswerForSnack()))
                    ],
                    ),
                    duration: Duration(seconds: 3),
                    ));
                    }
                  });
                },
                child: Visibility(
                  visible: robberyQuizBrain.getWrongAnswers()[2].toString() != "",
                                  child: Container(
                    margin: EdgeInsets.all(15.0),
                    decoration: BoxDecoration(
                        border: Border.all(
                      color: Color.fromRGBO(240, 84, 84, 1.0),
                      style: BorderStyle.solid,
                      width: 2.0,
                    )),
                    height: 100.0,
                    child: Center(
                      child: Text(
                        robberyQuizBrain.getWrongAnswers()[2].toString(),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Color.fromRGBO(221, 221, 221, 1.0),
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
