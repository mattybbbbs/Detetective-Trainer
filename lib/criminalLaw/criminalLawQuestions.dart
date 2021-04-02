import 'package:flutter/material.dart';
import 'criminalLawQuestionBank.dart';

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
      ),
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(color: Color.fromRGBO(37, 45, 75, 1.0)),
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
                )),
                child: Center(
                  child: Text(
                    criminalLawQuizBrain.getQuestionText(),
                    style: TextStyle(
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
                      criminalLawQuizBrain.getWrongAnswers()[0].toString(),
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
                    criminalLawQuizBrain.pickedTwo();
                    criminalLawQuizBrain.checkAnswer();
                    criminalLawQuizBrain.nextQuestion();
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
                      criminalLawQuizBrain.getWrongAnswers()[1].toString(),
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
                    criminalLawQuizBrain.pickedThree();
                    criminalLawQuizBrain.checkAnswer();
                    criminalLawQuizBrain.nextQuestion();
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
                      criminalLawQuizBrain.getWrongAnswers()[2].toString(),
                      style: TextStyle(
                        color: Colors.white,
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
