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
        title: Text('Mechanics of Law'),
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
                    mechanicsQuizBrain.getQuestionText(),
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
                    mechanicsQuizBrain.pickedOne();
                    mechanicsQuizBrain.checkAnswer();
                    mechanicsQuizBrain.nextQuestion();
                    if (questionNumber < mechanicsQuizBrain.magicNumber()) {
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
                    color: Colors.white,
                    style: BorderStyle.solid,
                    width: 2.0,
                  )),
                  height: 100.0,
                  child: Center(
                    child:
                        Text(mechanicsQuizBrain.getWrongAnswers()[0].toString(),
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
                    mechanicsQuizBrain.pickedTwo();
                    mechanicsQuizBrain.checkAnswer();
                    mechanicsQuizBrain.nextQuestion();
                    if (questionNumber < mechanicsQuizBrain.magicNumber()) {
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
                    color: Colors.white,
                    style: BorderStyle.solid,
                    width: 2.0,
                  )),
                  height: 100.0,
                  child: Center(
                    child: Text(
                      mechanicsQuizBrain.getWrongAnswers()[1].toString(),
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.white,
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
                    if (questionNumber < mechanicsQuizBrain.magicNumber()) {
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
                    color: Colors.white,
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
