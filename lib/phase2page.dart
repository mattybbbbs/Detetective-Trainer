import 'package:detective_trainer/globals.dart';
import 'package:detective_trainer/robbery/robberyQuestions.dart';
import 'package:flutter/material.dart';
import 'package:detective_trainer/fraud/fraudQuestions.dart';
import 'package:detective_trainer/sex/sexQuestions.dart';

class Phase2page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[900],
        title: Text('Phase 2'),
      ),
      body: Container(
        decoration: BoxDecoration(color: Color.fromRGBO(75, 38, 45, 1.0)),
        child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Fraud()));
                  questionNumber = 0;
                  score = 0;
                  fraudQuizBrain.fraudShuffle();
                },
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 3.0,
                      color: Colors.red,
                    ),
                    color: Colors.red[900],
                  ),
                  height: 75.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Image.asset('assets/cyber-crime.png'),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Text(
                          'Fraud',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Robbery()));
                  questionNumber = 0;
                  score = 0;
                  robberyQuizBrain.robberyShuffle();
                },
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 3.0,
                      color: Colors.red,
                    ),
                    color: Colors.red[900],
                  ),
                  height: 75.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Image.asset('assets/thief.png'),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Text(
                          'Property offences and Robbery',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Sex()));
                  questionNumber = 0;
                  score = 0;
                  sexQuizBrain.sexShuffle();
                },
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 3.0,
                      color: Colors.red,
                    ),
                    color: Colors.red[900],
                  ),
                  height: 75.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Image.asset('assets/gender-fluid.png'),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Text(
                          'Sexual offences',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
