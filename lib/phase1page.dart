import 'package:detective_trainer/assaults/assaults.dart';
import 'package:flutter/material.dart';
import 'drugs/drugQuestions.dart';

class Phase1page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Phase 1'),
      ),
      body: Container(
          decoration: BoxDecoration(color: Color.fromRGBO(37, 45, 75, 1.0)),
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Druginvestigations()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 3.0,
                        color: Colors.blue,
                      ),
                      color: Colors.blue[900],
                    ),
                    height: 75.0,
                    child: Center(
                        child: Text(
                      'Incident Management',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    )),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Druginvestigations()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 3.0,
                        color: Colors.blue,
                      ),
                      color: Colors.blue[900],
                    ),
                    height: 75.0,
                    child: Center(
                        child: Text(
                      'Mechanics of Law',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    )),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Druginvestigations()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 3.0,
                        color: Colors.blue,
                      ),
                      color: Colors.blue[900],
                    ),
                    height: 75.0,
                    child: Center(
                        child: Text(
                      'Searching Places',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    )),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Druginvestigations()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 3.0,
                        color: Colors.blue,
                      ),
                      color: Colors.blue[900],
                    ),
                    height: 75.0,
                    child: Center(
                        child: Text(
                      'Police Powers',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    )),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Druginvestigations()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 3.0,
                        color: Colors.blue,
                      ),
                      color: Colors.blue[900],
                    ),
                    height: 75.0,
                    child: Center(
                        child: Text(
                      'Offender Identification',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    )),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Druginvestigations()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 3.0,
                        color: Colors.blue,
                      ),
                      color: Colors.blue[900],
                    ),
                    height: 75.0,
                    child: Center(
                        child: Text(
                      'Criminal Law',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    )),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Druginvestigations()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 3.0,
                        color: Colors.blue,
                      ),
                      color: Colors.blue[900],
                    ),
                    height: 75.0,
                    child: Center(
                        child: Text(
                      'Objections',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    )),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Druginvestigations()));
                    drugQuizBrain.questionNumber = 0;
                    drugQuizBrain.score = 0;
                    drugQuizBrain.drugShuffle();
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 3.0,
                        color: Colors.blue,
                      ),
                      color: Colors.blue[900],
                    ),
                    height: 75.0,
                    child: Center(
                        child: Text(
                      'Drugs',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    )),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Assaults()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 3.0,
                        color: Colors.blue,
                      ),
                      color: Colors.blue[900],
                    ),
                    height: 75.0,
                    child: Center(
                        child: Text(
                      'Offences Against the Person',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    )),
                  ),
                ),
              ),
            ],
          )

          /*Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            GestureDetector(
              onTap: () {},
              child: Container(
                margin: EdgeInsets.all(15.0),
                height: 70.0,
                decoration: BoxDecoration(
                    border: Border.all(
                  color: Colors.white,
                  width: 3.0,
                  style: BorderStyle.solid,
                )),
                child: Center(
                  child: Text(
                    'Mechanics of Law',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Druginvestigations()));
              },
              child: Container(
                margin: EdgeInsets.all(15.0),
                height: 70.0,
                decoration: BoxDecoration(
                    border: Border.all(
                  color: Colors.white,
                  width: 3.0,
                  style: BorderStyle.solid,
                )),
                child: Center(
                  child: Text(
                    'Drug Investigations',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                margin: EdgeInsets.all(15.0),
                height: 70.0,
                decoration: BoxDecoration(
                    border: Border.all(
                  color: Colors.white,
                  width: 3.0,
                  style: BorderStyle.solid,
                )),
                child: Center(
                  child: Text(
                    'Assaults',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                margin: EdgeInsets.all(15.0),
                height: 70.0,
                decoration: BoxDecoration(
                    border: Border.all(
                  color: Colors.white,
                  width: 3.0,
                  style: BorderStyle.solid,
                )),
                child: Center(
                  child: Text(
                    'Searching Places',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
            ),
          ],*/

          ),
    );
  }
}
