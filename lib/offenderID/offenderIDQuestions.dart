import 'package:flutter/material.dart';
import 'offenderIDQuestionBank.dart';

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
                    offenderIdQuizBrain.getQuestionText(),
                    style: TextStyle(
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
                        offenderIdQuizBrain.getWrongAnswers()[0].toString(),
                        style: TextStyle(
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
                      offenderIdQuizBrain.getWrongAnswers()[1].toString(),
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
                    offenderIdQuizBrain.pickedThree();
                    offenderIdQuizBrain.checkAnswer();
                    offenderIdQuizBrain.nextQuestion();
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
                      offenderIdQuizBrain.getWrongAnswers()[2].toString(),
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
