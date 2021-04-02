import 'package:detective_trainer/globals.dart';
import 'package:flutter/material.dart';
import 'homicide/homicideQuestions.dart';

class Phase3page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green[900],
          title: Text('Phase 3'),
        ),
        body: Container(
          decoration: BoxDecoration(color: Color.fromRGBO(46, 75, 38, 1.0)),
          child: ListView(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Homicide()));
                    questionNumber = 0;
                    score = 0;
                    homicideQuizBrain.homicideShuffle();
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 3.0,
                        color: Colors.green,
                      ),
                      color: Colors.green[900],
                    ),
                    height: 75.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          flex: 1,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Image.asset('assets/victim.png'),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Text(
                            'Homicide',
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
        ));
  }
}
