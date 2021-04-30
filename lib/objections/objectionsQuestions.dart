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
        title: Text('Objections'),
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
                    objectionsQuizBrain.getQuestionText(),
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
                    objectionsQuizBrain.pickedOne();
                    objectionsQuizBrain.checkAnswer();
                    objectionsQuizBrain.nextQuestion();
                    if (questionNumber < objectionsQuizBrain.magicNumber()) {
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
                    color: Colors.white,
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
                          color: Colors.white,
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
                    if (questionNumber < objectionsQuizBrain.magicNumber()) {
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
                    color: Colors.white,
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
                        color: Colors.white,
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
                    if (questionNumber < objectionsQuizBrain.magicNumber()) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Row(children: [
                        Padding(padding: const EdgeInsets.all(8.0),),
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
                      color: Colors.white,
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
