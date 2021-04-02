import 'package:flutter/material.dart';
import 'sexQuestionBank.dart';

SexQuizBrain sexQuizBrain = SexQuizBrain();

class Sex extends StatefulWidget {
  @override
  _SexState createState() => _SexState();
}

class _SexState extends State<Sex> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[900],
        title: Text('Sexual offences'),
        //ToDo: Add pic and hero animation
      ),
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(color: Color.fromRGBO(75, 38, 45, 1.0)),
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              Container(
                margin: EdgeInsets.all(15.0),
                height: 200.0,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white,
                    style: BorderStyle.solid,
                    width: 3.0,
                  ),
                ),
                child: Center(
                  child: Text(
                    sexQuizBrain.getQuestionText(),
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    sexQuizBrain.pickedOne();
                    sexQuizBrain.checkAnswer();
                    sexQuizBrain.nextQuestion();
                  });
                },
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
                    child: Text(sexQuizBrain.getWrongAnswers()[0].toString(),
                        style: TextStyle(
                          color: Colors.white,
                        )),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    sexQuizBrain.pickedTwo();
                    sexQuizBrain.checkAnswer();
                    sexQuizBrain.nextQuestion();
                  });
                },
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
                      sexQuizBrain.getWrongAnswers()[1].toString(),
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    sexQuizBrain.pickedThree();
                    sexQuizBrain.checkAnswer();
                    sexQuizBrain.nextQuestion();
                  });
                },
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
                      sexQuizBrain.getWrongAnswers()[2].toString(),
                      style: TextStyle(
                        color: Colors.white,
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
