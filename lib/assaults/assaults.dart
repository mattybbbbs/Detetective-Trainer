import 'package:flutter/material.dart';
import 'assaultQuestionBank.dart';

AssaultQuizBrain assaultQuizBrain = AssaultQuizBrain();

class Assaults extends StatefulWidget {
  @override
  _AssaultsState createState() => _AssaultsState();
}

class _AssaultsState extends State<Assaults> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Offences Against the Person'),
      ),
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(color: Color.fromRGBO(37, 45, 75, 1.0)),
          child: Column(
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
                    assaultQuizBrain.getQuestionText(),
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Center(
                child: ListView(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          assaultQuizBrain.pickedOne();
                          assaultQuizBrain.checkAnswer();
                          assaultQuizBrain.nextQuestion();
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.all(15.0),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.white,
                            style: BorderStyle.solid,
                            width: 3.0,
                          ),
                        ),
                        height: 50.0,
                        child: Center(
                          child: Text(
                            assaultQuizBrain.getWrongAnswers()[0].toString(),
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
                          assaultQuizBrain.pickedTwo();
                          assaultQuizBrain.checkAnswer();
                          assaultQuizBrain.nextQuestion();
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.all(15.0),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.white,
                            style: BorderStyle.solid,
                            width: 3.0,
                          ),
                        ),
                        height: 50.0,
                        child: Center(
                          child: Text(
                            assaultQuizBrain.getWrongAnswers()[1].toString(),
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
                          assaultQuizBrain.pickedThree();
                          assaultQuizBrain.checkAnswer();
                          assaultQuizBrain.nextQuestion();
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.all(15.0),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.white,
                            style: BorderStyle.solid,
                            width: 3.0,
                          ),
                        ),
                        height: 50.0,
                        child: Center(
                          child: Text(
                            assaultQuizBrain.getWrongAnswers()[2].toString(),
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
