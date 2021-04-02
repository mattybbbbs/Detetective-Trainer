import 'package:detective_trainer/assaults/assaults.dart';
import 'package:detective_trainer/criminalLaw/criminalLawQuestions.dart';
import 'package:flutter/material.dart';
import 'drugs/drugQuestions.dart';
import 'globals.dart';
import 'package:detective_trainer/mechanics/mechanicsQuestions.dart';
import 'package:detective_trainer/incidentManagement/incidentManagementQuestions.dart';
import 'package:detective_trainer/searching/searchingQuestions.dart';
import 'package:detective_trainer/policePowers/policePowersQuestions.dart';
import 'package:detective_trainer/offenderID/offenderIDQuestions.dart';
import 'package:detective_trainer/objections/objectionsQuestions.dart';

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
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Incident()));
                    questionNumber = 0;
                    score = 0;
                    incidentQuizBrain.incidentShuffle();
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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          flex: 1,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Image.asset('assets/alert.png'),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Text(
                            'Incident Management',
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
                        MaterialPageRoute(builder: (context) => Mechanics()));
                    questionNumber = 0;
                    score = 0;
                    mechanicsQuizBrain.mechanicsShuffle();
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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          flex: 1,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Image.asset('assets/gear.png'),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Text(
                            'Mechanics of Law',
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
                        MaterialPageRoute(builder: (context) => Searching()));
                    questionNumber = 0;
                    score = 0;
                    searchingQuizBrain.searchingShuffle();
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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          flex: 1,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Image.asset('assets/search.png'),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Text(
                            'Searching Places',
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
                        context,
                        MaterialPageRoute(
                            builder: (context) => Policepowers()));
                    questionNumber = 0;
                    score = 0;
                    policePowersQuizBrain.policePowersShuffle();
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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          flex: 1,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Image.asset('assets/police-badge.png'),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Text(
                            'Police Powers',
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
                        MaterialPageRoute(builder: (context) => OffenderId()));
                    questionNumber = 0;
                    score = 0;
                    offenderIdQuizBrain.offenderIdShuffle();
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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          flex: 1,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Image.asset('assets/fingerprint.png'),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Text(
                            'Offender Identification',
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
                        MaterialPageRoute(builder: (context) => CriminalLaw()));
                    questionNumber = 0;
                    score = 0;
                    criminalLawQuizBrain.criminalLawShuffle();
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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          flex: 1,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Image.asset('assets/law.png'),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Text(
                            'Criminal Law',
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
                        MaterialPageRoute(builder: (context) => Objections()));
                    questionNumber = 0;
                    score = 0;
                    objectionsQuizBrain.objectionsShuffle();
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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          flex: 1,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Image.asset('assets/paperwork.png'),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Text(
                            'Objections',
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
                        context,
                        MaterialPageRoute(
                            builder: (context) => Druginvestigations()));
                    questionNumber = 0;
                    // drugQuizBrain.score = 0;
                    score = 0;
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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                            flex: 1,
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Image.asset('assets/syringe.png'),
                            )),
                        Expanded(
                          flex: 2,
                          child: Text(
                            'Drugs',
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
                        MaterialPageRoute(builder: (context) => Assaults()));
                    questionNumber = 0;
                    score = 0;
                    assaultQuizBrain.assaultShuffle();
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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          flex: 1,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Image.asset('assets/fighting.png'),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Text(
                            'Offences against the person',
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
