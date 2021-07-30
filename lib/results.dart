import 'package:detective_trainer/main.dart';
import 'package:flutter/material.dart';
import 'package:detective_trainer/globals.dart';
import 'homescreen.dart';


class ResultsPage extends StatefulWidget {
  @override
  _ResultsPageState createState() => _ResultsPageState();
}

class _ResultsPageState extends State<ResultsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(48, 71, 94, 1.0),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(
                'Result:',
                style: TextStyle(
                  color: Color.fromRGBO(221, 221, 221, 1.0),
                  fontSize: 75.0,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    score.toString(),
                    style: TextStyle(
                      color: Color.fromRGBO(221, 221, 221, 1.0),
                      fontSize: 50.0,
                    ),
                  ),
                  Text(
                    ' / ',
                    style: TextStyle(
                      color: Color.fromRGBO(221, 221, 221, 1.0),
                      fontSize: 50.0,
                    ),
                  ),
                  Text(
                    questionNumberPlusOne.toString(),
                    style: TextStyle(
                      color: Color.fromRGBO(221, 221, 221, 1.0),
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
                      color: Color.fromRGBO(221, 221, 221, 1.0),
                      fontSize: 50.0,
                    ),
                  ),
                  Text(
                    '%',
                    style: TextStyle(
                      color: Color.fromRGBO(221, 221, 221, 1.0),
                      fontSize: 50.0,
                    ),
                  ),
                ],
              ),
              FloatingActionButton.extended(
                backgroundColor: Color.fromRGBO(240, 84, 84, 1.0),
                label: Text('HOME',
                style: TextStyle(
                  color: Color.fromRGBO(221, 221, 221, 1.0),
                ),
                
                ),
                icon: Icon(Icons.replay,
                color: Color.fromRGBO(221, 221, 221, 1.0),),
                onPressed: () {
                  score = 0;
                  // drugQuizBrain.score = 0;
                  // drugQuizBrain.questionNumber = 0;
                  // drugQuizBrain.drugShuffle();

                  navigatorKey.currentState.push(MaterialPageRoute(
                    builder: (context) => HomeScreen(),
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
