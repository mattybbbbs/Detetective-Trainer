import 'package:flutter/material.dart';
import 'homicideQuestionBank.dart';
import 'package:detective_trainer/globals.dart';

HomicideQuizBrain homicideQuizBrain = HomicideQuizBrain();

class Homicide extends StatefulWidget {
  @override
  _HomicideState createState() => _HomicideState();
}

class _HomicideState extends State<Homicide> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[900],
        title: Text('Homicide'),
        //ToDo: Add pic and hero animation
      ),
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(color: Color.fromRGBO(46, 75, 38, 1.0)),
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
                    homicideQuizBrain.getQuestionText(),
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
                    homicideQuizBrain.pickedOne();
                    homicideQuizBrain.checkAnswer();
                    homicideQuizBrain.nextQuestion();
                    if (questionNumber < homicideQuizBrain.magicNumber()) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Row(children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: homicideQuizBrain.feedbackIcon(),
                      ),
                      Flexible(child: Text(homicideQuizBrain.correctAnswerForSnack()))
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
                        Text(homicideQuizBrain.getWrongAnswers()[0].toString(),
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
                    homicideQuizBrain.pickedTwo();
                    homicideQuizBrain.checkAnswer();
                    homicideQuizBrain.nextQuestion();
                    if (questionNumber < homicideQuizBrain.magicNumber()) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Row(children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: homicideQuizBrain.feedbackIcon(),
                      ),
                      Flexible(child: Text(homicideQuizBrain.correctAnswerForSnack()))
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
                      homicideQuizBrain.getWrongAnswers()[1].toString(),
                      textAlign: TextAlign.center,
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
                    homicideQuizBrain.pickedThree();
                    homicideQuizBrain.checkAnswer();
                    homicideQuizBrain.nextQuestion();
                    if (questionNumber < homicideQuizBrain.magicNumber()) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Row(children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: homicideQuizBrain.feedbackIcon(),
                      ),
                      Flexible(child: Text(homicideQuizBrain.correctAnswerForSnack()))
                    ],
                    ),
                    duration: Duration(seconds: 3),
                    ));
                    }
                  });
                },
                child: Visibility(
                  visible: homicideQuizBrain.getWrongAnswers()[2].toString() != "",
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
                        homicideQuizBrain.getWrongAnswers()[2].toString(),
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
