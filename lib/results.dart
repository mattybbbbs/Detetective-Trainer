import 'package:detective_trainer/main.dart';
import 'package:flutter/material.dart';
import 'package:detective_trainer/globals.dart';

class ResultsPage extends StatefulWidget {
  @override
  _ResultsPageState createState() => _ResultsPageState();
}

class _ResultsPageState extends State<ResultsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(
                'Result:',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 75.0,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    score.toString(),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 50.0,
                    ),
                  ),
                  Text(
                    ' / ',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 50.0,
                    ),
                  ),
                  Text(
                    questionNumberPlusOne.toString(),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 50.0,
                    ),
                  ),
                ],
              ),
              // Text(drugQuizBrain.score.toString()),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    percentageCorrect().round().toString(),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 50.0,
                    ),
                  ),
                  Text(
                    '%',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 50.0,
                    ),
                  ),
                ],
              ),
              FloatingActionButton.extended(
                label: Text('RESTART'),
                icon: Icon(Icons.replay),
                onPressed: () {
                  score = 0;
                  // drugQuizBrain.score = 0;
                  // drugQuizBrain.questionNumber = 0;
                  // drugQuizBrain.drugShuffle();

                  navigatorKey.currentState.push(MaterialPageRoute(
                    builder: (context) => Homescreen(),
                  ));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
