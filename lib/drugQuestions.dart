import 'package:flutter/material.dart';
import 'drugQuestionBank.dart';

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
        title: Text('Drug Investigations'),
      ),
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: FractionalOffset.topLeft,
                end: FractionalOffset.bottomRight,
                colors: [
                  Colors.blue,
                  Colors.black,
                ]),
          ),
          child: Column(
            children: <Widget>[
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
                    drugQuizBrain.getQuestionText(),
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
                    ListAnswerCard(),
                    Container(
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
                          drugQuizBrain.getWrongAnswers()[1].toString(),
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Container(
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
                          drugQuizBrain.getWrongAnswers()[2].toString(),
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ListAnswerCard extends StatelessWidget {
  const ListAnswerCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
          border: Border.all(
        color: Colors.white,
        style: BorderStyle.solid,
        width: 3.0,
      )),
      height: 50.0,
      child: Center(
        child: Text(drugQuizBrain.getWrongAnswers()[0].toString(),
            style: TextStyle(
              color: Colors.white,
            )),
      ),
    );
  }
}
