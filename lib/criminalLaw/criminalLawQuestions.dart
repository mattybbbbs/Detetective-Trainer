import 'package:flutter/material.dart';
import 'criminalLawQuestionBank.dart';
import 'package:detective_trainer/globals.dart';

CriminalLawQuizBrain criminalLawQuizBrain = CriminalLawQuizBrain();

class CriminalLaw extends StatefulWidget {
  @override
  _CriminalLawState createState() => _CriminalLawState();
}

class _CriminalLawState extends State<CriminalLaw> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Criminal Law'),
        backgroundColor: Color.fromRGBO(37, 45, 75, 1.0),
        elevation: 0.0,
      ),
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(color: Color.fromRGBO(37, 45, 75, 1.0)),
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
                )),
                child: Center(
                  child: Text(
                    criminalLawQuizBrain.getQuestionText(),
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
                    criminalLawQuizBrain.pickedTwo();
                    criminalLawQuizBrain.checkAnswer();
                    criminalLawQuizBrain.nextQuestion();
                    if (questionNumber < criminalLawQuizBrain.magicNumber()) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Row(children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: criminalLawQuizBrain.feedbackIcon(),
                        ),
                        Flexible(child: Text(criminalLawQuizBrain.correctAnswerForSnack()))
                      ],),
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
                    ),
                  ),
                  height: 100.0,
                  child: Center(
                    child: Text(
                      criminalLawQuizBrain.getWrongAnswers()[0].toString(),
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
                    criminalLawQuizBrain.pickedTwo();
                    criminalLawQuizBrain.checkAnswer();
                    criminalLawQuizBrain.nextQuestion();
                    if (questionNumber < criminalLawQuizBrain.magicNumber()) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Row(children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: criminalLawQuizBrain.feedbackIcon(),
                        ),
                        Flexible(child: Text(criminalLawQuizBrain.correctAnswerForSnack()))
                      ],),
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
                      criminalLawQuizBrain.getWrongAnswers()[1].toString(),
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
                    criminalLawQuizBrain.pickedThree();
                    criminalLawQuizBrain.checkAnswer();
                    criminalLawQuizBrain.nextQuestion();
                    if (questionNumber < criminalLawQuizBrain.magicNumber()) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Row(children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: criminalLawQuizBrain.feedbackIcon(),
                        ),
                        Flexible(child: Text(criminalLawQuizBrain.correctAnswerForSnack()))
                      ],),
                      duration: Duration(seconds: 3),
                      ));
                    }
                  });
                },
                child: Visibility(
                  visible: criminalLawQuizBrain.getWrongAnswers()[2].toString() != "",
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
                        criminalLawQuizBrain.getWrongAnswers()[2].toString(),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
