import 'package:flutter/material.dart';
import 'package:detective_trainer/globals.dart';
import 'package:detective_trainer/objections/objectionsQuestionBank.dart';

ObjectionsQuizBrain objectionsQuizBrain = ObjectionsQuizBrain();

class Objections extends StatefulWidget {
  @override
  _ObjectionsState createState() => _ObjectionsState();
}

class _ObjectionsState extends State<Objections> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(48, 71, 94, 1.0),
        title: Text('Objections',
        style: TextStyle(
          color: Color.fromRGBO(221, 221, 221, 1.0)
        ),),
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
                    objectionsQuizBrain.getQuestionText(),
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
                    objectionsQuizBrain.pickedOne();
                    objectionsQuizBrain.checkAnswer();
                    objectionsQuizBrain.nextQuestion();
                    if (questionNumber < 8) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Row(children: [
                        Padding(padding: const EdgeInsets.all(8.0),),
                        Flexible(child: Text(objectionsQuizBrain.correctAnswerForSnack()))
                      ]),
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
                        objectionsQuizBrain.getWrongAnswers()[0].toString(),
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
                    objectionsQuizBrain.pickedTwo();
                    objectionsQuizBrain.checkAnswer();
                    objectionsQuizBrain.nextQuestion();
                    if (questionNumber < 8) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Row(children: [
                        Padding(padding: const EdgeInsets.all(8.0),),
                        Flexible(child: Text(objectionsQuizBrain.correctAnswerForSnack()))
                      ]),
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
                      objectionsQuizBrain.getWrongAnswers()[1].toString(),
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
                    objectionsQuizBrain.pickedThree();
                    objectionsQuizBrain.checkAnswer();
                    objectionsQuizBrain.nextQuestion();
                    if (questionNumber < 8) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Row(children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: objectionsQuizBrain.feedbackIcon(),
                          ),
                        Flexible(child: Text(objectionsQuizBrain.correctAnswerForSnack()))
                      ]),
                      duration: Duration(seconds: 3),
                      ));
                    }
                  });
                },
                child: Visibility(
                  visible: objectionsQuizBrain.getWrongAnswers()[2].toString() != "",
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
                        objectionsQuizBrain.getWrongAnswers()[2].toString(),
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
