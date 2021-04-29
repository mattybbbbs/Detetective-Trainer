import 'package:flutter/material.dart';
import 'offenderIDQuestionBank.dart';
import 'package:detective_trainer/globals.dart';

OffenderIdQuizBrain offenderIdQuizBrain = OffenderIdQuizBrain();

class OffenderId extends StatefulWidget {
  @override
  _OffenderIdState createState() => _OffenderIdState();
}

class _OffenderIdState extends State<OffenderId> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Offender ID'),
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
                    offenderIdQuizBrain.getQuestionText(),
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
                    offenderIdQuizBrain.pickedOne();
                    offenderIdQuizBrain.checkAnswer();
                    offenderIdQuizBrain.nextQuestion();
                    if (questionNumber < offenderIdQuizBrain.magicNumber()) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Row(children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: offenderIdQuizBrain.feedbackIcon(),
                        ),
                        Flexible(child: Text(offenderIdQuizBrain.correctAnswerForSnack()))
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
                        offenderIdQuizBrain.getWrongAnswers()[0].toString(),
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
                    offenderIdQuizBrain.pickedTwo();
                    offenderIdQuizBrain.checkAnswer();
                    offenderIdQuizBrain.nextQuestion();
                    if (questionNumber < offenderIdQuizBrain.magicNumber()) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Row(children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: offenderIdQuizBrain.feedbackIcon(),
                        ),
                        Flexible(child: Text(offenderIdQuizBrain.correctAnswerForSnack()))
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
                      offenderIdQuizBrain.getWrongAnswers()[1].toString(),
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
                    offenderIdQuizBrain.pickedThree();
                    offenderIdQuizBrain.checkAnswer();
                    offenderIdQuizBrain.nextQuestion();
                    if (questionNumber < offenderIdQuizBrain.magicNumber()) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Row(children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: offenderIdQuizBrain.feedbackIcon(),
                        ),
                        Flexible(child: Text(offenderIdQuizBrain.correctAnswerForSnack()))
                      ],),
                      duration: Duration(seconds: 3),
                      ));
                    }
                  });
                },
                child: Visibility(
                  visible: offenderIdQuizBrain.getWrongAnswers()[2].toString() != "",
                
                child: Container(
                  margin: EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                      border: Border.all(
                    color: Colors.white,
                    style: BorderStyle.solid,
                    width: 3.0,
                  )),
                  height: 50.0,
                  child: Center(
                    child: Text(
                      offenderIdQuizBrain.getWrongAnswers()[2].toString(),
                      style: TextStyle(
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
