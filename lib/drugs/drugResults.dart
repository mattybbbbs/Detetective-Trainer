import 'package:detective_trainer/drugs/drugQuestions.dart';
import 'package:detective_trainer/main.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatefulWidget {
  @override
  _ResultsPageState createState() => _ResultsPageState();
}

class _ResultsPageState extends State<ResultsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Results'),
        automaticallyImplyLeading: false,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: <Widget>[
              Text('Result:'),
              Text(drugQuizBrain.score.toString()),
              FloatingActionButton(
                onPressed: () {
                  drugQuizBrain.score = 0;
                  drugQuizBrain.questionNumber = 0;
                  drugQuizBrain.drugShuffle();

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
