import 'package:flutter/material.dart';
import 'drugs/drugQuestions.dart';

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
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Druginvestigations()));
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
                  child: Center(
                      child: Text(
                    'Fraud',
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
                      color: Colors.red,
                    ),
                    color: Colors.red[900],
                  ),
                  height: 75.0,
                  child: Center(
                      child: Text(
                    'Property Offences and Robbery',
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
                      color: Colors.red,
                    ),
                    color: Colors.red[900],
                  ),
                  height: 75.0,
                  child: Center(
                      child: Text(
                    'Sexual Offences',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
