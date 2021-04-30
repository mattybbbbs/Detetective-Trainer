import 'package:flutter/material.dart';
import 'drugQuestionBank.dart';
import 'package:detective_trainer/globals.dart';

DrugQuizBrain drugQuizBrain = DrugQuizBrain();

class Druginvestigations extends StatefulWidget {
  @override
  _DruginvestigationsState createState() => _DruginvestigationsState();
}

class _DruginvestigationsState extends State<Druginvestigations> {
//class Druginvestigations extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drugs'),
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
                    drugQuizBrain.getQuestionText(),
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
                    drugQuizBrain.pickedOne();
                    drugQuizBrain.checkAnswer();
                    drugQuizBrain.nextQuestion();
                    if (questionNumber < drugQuizBrain.magicNumber()) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Row(children: [
                        Padding(padding: const EdgeInsets.all(8.0),
                        child: drugQuizBrain.feedbackIcon(),),
                        Flexible(child: Text(drugQuizBrain.correctAnswerForSnack()),)
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
                    child: Text(drugQuizBrain.getWrongAnswers()[0].toString(),
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
                    drugQuizBrain.pickedTwo();
                    drugQuizBrain.checkAnswer();
                    drugQuizBrain.nextQuestion();
                     if (questionNumber < drugQuizBrain.magicNumber()) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Row(children: [
                        Padding(padding: const EdgeInsets.all(8.0),
                        child: drugQuizBrain.feedbackIcon(),),
                        Flexible(child: Text(drugQuizBrain.correctAnswerForSnack()),)
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
                      drugQuizBrain.getWrongAnswers()[1].toString(),
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
                    drugQuizBrain.pickedThree();
                    drugQuizBrain.checkAnswer();
                    drugQuizBrain.nextQuestion();
                     if (questionNumber < drugQuizBrain.magicNumber()) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Row(children: [
                        Padding(padding: const EdgeInsets.all(8.0),
                        child: drugQuizBrain.feedbackIcon(),),
                        Flexible(child: Text(drugQuizBrain.correctAnswerForSnack()),)
                      ],),
                      duration: Duration(seconds: 3),));
                    }
                  });
                },
                child: Visibility(
                  visible: drugQuizBrain.getWrongAnswers()[2].toString() != "",
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
                        drugQuizBrain.getWrongAnswers()[2].toString(),
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
