import 'package:flutter/material.dart';
import 'policePowersQuestionBank.dart';
import 'package:detective_trainer/globals.dart';

PolicePowersQuizBrain policePowersQuizBrain = PolicePowersQuizBrain();

class Policepowers extends StatefulWidget {
  @override
  _PolicepowersState createState() => _PolicepowersState();
}

class _PolicepowersState extends State<Policepowers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Police Powers'),
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
                    policePowersQuizBrain.getQuestionText(),
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
                    policePowersQuizBrain.pickedOne();
                    policePowersQuizBrain.checkAnswer();
                    policePowersQuizBrain.nextQuestion();
                    if (questionNumber < policePowersQuizBrain.magicNumber()) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Row(children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                        child: policePowersQuizBrain.feedbackIcon(),
                        ),
                        Flexible(child: Text(policePowersQuizBrain.correctAnswerForSnack()),)
                      ],),
                      duration: Duration(seconds: 3),
                      ));
                    }                  });
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
                        policePowersQuizBrain.getWrongAnswers()[0].toString(),
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
                    policePowersQuizBrain.pickedTwo();
                    policePowersQuizBrain.checkAnswer();
                    policePowersQuizBrain.nextQuestion();
                    if (questionNumber < policePowersQuizBrain.magicNumber()) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Row(children: [
                        Padding(padding: const EdgeInsets.all(8.0),
                        child: policePowersQuizBrain.feedbackIcon(),
                        ),
                        Flexible(child: Text(policePowersQuizBrain.correctAnswerForSnack()),)
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
                      policePowersQuizBrain.getWrongAnswers()[1].toString(),
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
                    policePowersQuizBrain.pickedThree();
                    policePowersQuizBrain.checkAnswer();
                    policePowersQuizBrain.nextQuestion();
                    if (questionNumber < policePowersQuizBrain.magicNumber()) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Row(children: [
                        Padding(padding: const EdgeInsets.all(8.0),
                        child: policePowersQuizBrain.feedbackIcon(),
                        ),
                        Flexible(child: Text(policePowersQuizBrain.correctAnswerForSnack()),)
                      ],),
                      duration: Duration(seconds: 3),
                      ));
                    }
                  });
                },
                child: Visibility(
                  visible: policePowersQuizBrain.getWrongAnswers()[2].toString() !="",
                
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
                      policePowersQuizBrain.getWrongAnswers()[2].toString(),
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
