import 'dart:ui';

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
import 'package:detective_trainer/fraud/fraudQuestions.dart';
import 'package:detective_trainer/robbery/robberyQuestions.dart';
import 'package:detective_trainer/sex/sexQuestions.dart';
import 'homicide/homicideQuestions.dart';
import 'package:google_fonts/google_fonts.dart';



class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: GoogleFonts.latoTextTheme(Theme.of(context).textTheme,
        
        ),
        
      ),
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(48, 71, 94, 1.0),
        title: Text('Detective Trainer',
        style: TextStyle(
          color: Color.fromRGBO(221, 221, 221, 1.0)
        ),
        ),
        elevation: 0.0,
      ),
      body:
      // body: Center(
          // child: Column(
          //   crossAxisAlignment: CrossAxisAlignment.center,
            
          //   children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(48, 71, 94, 1.0),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                        
                        child: Text('Choose a topic',
                        style: TextStyle(
                          color: Color.fromRGBO(221, 221, 221, 1.0),
                          fontSize: 35.0,
                        ),),),
                    ),
                    Expanded(
                      child: ListView(
                                children: [
                                  Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            questionNumber = 0;
                            
                          score = 0;
                          incidentQuizBrain.incidentShuffle();
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Incident()));
                          });
                          // questionNumber = 0;
                          // score = 0;
                          // incidentQuizBrain.incidentShuffle();
                          // Navigator.push(context,
                          //     MaterialPageRoute(builder: (context) => Incident()));
                          
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 3.0,
                              color: Color.fromRGBO(240, 84, 84, 1.0),
                            ),
                            color: Color.fromRGBO(48, 71, 94, 1.0),
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
                                    color: Color.fromRGBO(221, 221, 221, 1.0),
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
                          setState(() {
                            questionNumber = 0;
                          
                          score = 0;
                          mechanicsQuizBrain.mechanicsShuffle();
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Mechanics()));
                          });
                          // questionNumber = 0;
                          // score = 0;
                          // mechanicsQuizBrain.mechanicsShuffle();
                          // Navigator.push(context,
                          //     MaterialPageRoute(builder: (context) => Mechanics()));
                          
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 3.0,
                              color: Color.fromRGBO(240, 84, 84, 1.0),
                            ),
                            color: Color.fromRGBO(48, 71, 94, 1.0),
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
                                    color: Color.fromRGBO(221, 221, 221, 1.0),
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
                              color: Color.fromRGBO(240, 84, 84, 1.0),
                            ),
                            color: Color.fromRGBO(48, 71, 94, 1.0),
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
                                    color: Color.fromRGBO(221, 221, 221, 1.0),
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
                              color: Color.fromRGBO(240, 84, 84, 1.0),
                            ),
                            color: Color.fromRGBO(48, 71, 94, 1.0),
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
                                    color: Color.fromRGBO(221, 221, 221, 1.0),
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
                              color: Color.fromRGBO(240, 84, 84, 1.0),
                            ),
                            color: Color.fromRGBO(48, 71, 94, 1.0),
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
                                    color: Color.fromRGBO(221, 221, 221, 1.0),
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
                              color: Color.fromRGBO(240, 84, 84, 1.0),
                            ),
                            color: Color.fromRGBO(48, 71, 94, 1.0),
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
                                    color: Color.fromRGBO(221, 221, 221, 1.0),
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
                              color: Color.fromRGBO(240, 84, 84, 1.0),
                            ),
                            color: Color.fromRGBO(48, 71, 94, 1.0),
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
                                    color: Color.fromRGBO(221, 221, 221, 1.0),
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
                          score = 0;
                          drugQuizBrain.drugShuffle();
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 3.0,
                              color: Color.fromRGBO(240, 84, 84, 1.0),
                            ),
                            color: Color.fromRGBO(48, 71, 94, 1.0),
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
                                    color: Color.fromRGBO(221, 221, 221, 1.0),
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
                              color: Color.fromRGBO(240, 84, 84, 1.0),
                            ),
                            color: Color.fromRGBO(48, 71, 94, 1.0),
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
                                    color: Color.fromRGBO(221, 221, 221, 1.0),
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
                      MaterialPageRoute(builder: (context) => Fraud()));
                  questionNumber = 0;
                  score = 0;
                  fraudQuizBrain.fraudShuffle();
                },
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 3.0,
                      color: Color.fromRGBO(240, 84, 84, 1.0),
                    ),
                    color: Color.fromRGBO(48, 71, 94, 1.0),
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
                            color: Color.fromRGBO(221, 221, 221, 1.0),
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
                      color: Color.fromRGBO(240, 84, 84, 1.0),
                    ),
                    color: Color.fromRGBO(48, 71, 94, 1.0),
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
                            color: Color.fromRGBO(221, 221, 221, 1.0),
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
                      color: Color.fromRGBO(240, 84, 84, 1.0),
                    ),
                    color: Color.fromRGBO(48, 71, 94, 1.0),
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
                            color: Color.fromRGBO(221, 221, 221, 1.0),
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
                        MaterialPageRoute(builder: (context) => Homicide()));
                    questionNumber = 0;
                    score = 0;
                    homicideQuizBrain.homicideShuffle();
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 3.0,
                        color: Color.fromRGBO(240, 84, 84, 1.0),
                      ),
                      color: Color.fromRGBO(48, 71, 94, 1.0),
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
                              color: Color.fromRGBO(221, 221, 221, 1.0),
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
                  ],
                ),
              ),
            
          ),
      );
    
    
  }
}