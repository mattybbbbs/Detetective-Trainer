import 'package:flutter/material.dart';
import 'mechanicsQuestionBank.dart';
import 'package:detective_trainer/globals.dart';

MechanicsQuizBrain mechanicsQuizBrain = MechanicsQuizBrain();

class Mechanics extends StatefulWidget {
  @override
  _MechanicsState createState() => _MechanicsState();
}

class _MechanicsState extends State<Mechanics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(48, 71, 94, 1.0),
        title: Text('Mechanics of Law',
        style: TextStyle(
          color: Color.fromRGBO(221, 221, 221, 1.0)
        ),),
        elevation: 0.0,
        //ToDo: Add pic and hero animation
      ),
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
              color: Color.fromRGBO(
            48,
            71,
            94,
            1.0,
          )),
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
                    mechanicsQuizBrain.getQuestionText(),
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
                    mechanicsQuizBrain.pickedOne();
                    mechanicsQuizBrain.checkAnswer();
                    mechanicsQuizBrain.nextQuestion();
                    if (questionNumber < 8) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Row(children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: mechanicsQuizBrain.feedbackIcon(),
                        ),
                        Flexible(child: Text(mechanicsQuizBrain.correctAnswerForSnack()),)
                      ],),
                      duration: Duration(seconds: 3),));
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
                        Text(mechanicsQuizBrain.getWrongAnswers()[0].toString(),
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
                    mechanicsQuizBrain.pickedTwo();
                    mechanicsQuizBrain.checkAnswer();
                    mechanicsQuizBrain.nextQuestion();
                    if (questionNumber < 8) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Row(children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: mechanicsQuizBrain.feedbackIcon(),
                        ),
                        Flexible(child: Text(mechanicsQuizBrain.correctAnswerForSnack()),)
                      ],),
                      duration: Duration(seconds: 3),));
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
                      mechanicsQuizBrain.getWrongAnswers()[1].toString(),
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
                    mechanicsQuizBrain.pickedThree();
                    mechanicsQuizBrain.checkAnswer();
                    mechanicsQuizBrain.nextQuestion();
                    if (questionNumber < 8) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Row(children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: mechanicsQuizBrain.feedbackIcon(),
                        ),
                        Flexible(child: Text(mechanicsQuizBrain.correctAnswerForSnack()),)
                      ],),
                      duration: Duration(seconds: 3),));
                    }
                  });
                },
                child: Visibility(
                  visible: mechanicsQuizBrain.getWrongAnswers()[2].toString() != "",
                
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
                      mechanicsQuizBrain.getWrongAnswers()[2].toString(),
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
