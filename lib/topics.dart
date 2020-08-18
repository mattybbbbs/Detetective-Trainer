import 'package:flutter/material.dart';
import 'drugs/drugQuestions.dart';

class Topics extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListWheelScrollView(
          itemExtent: 50.0,
          children: <Widget>[
            Container(
              color: Colors.blue,
              child: Center(
                child: Text('Incident Management'),
              ),
            ),
            Container(
              color: Colors.blue,
              child: Center(
                child: Text('Mechanics of Law'),
              ),
            ),
            Container(
              color: Colors.blue,
              child: Center(
                child: Text('Searching Places'),
              ),
            ),
            Container(
              color: Colors.blue,
              child: Center(
                child: Text('Police Powers'),
              ),
            ),
            Container(
              color: Colors.blue,
              child: Center(
                child: Text('Offender Identification'),
              ),
            ),
            Container(
              color: Colors.blue,
              child: Center(
                child: Text('Criminal Law'),
              ),
            ),
            Container(
              color: Colors.blue,
              child: Center(
                child: Text('Objections'),
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
                color: Colors.blue,
                child: Center(
                  child: Text('Drugs'),
                ),
              ),
            ),
            Container(
              color: Colors.blue,
              child: Center(
                child: Text('Offences Against the Person'),
              ),
            ),
            Container(
              color: Colors.red,
              child: Center(
                child: Text('Fraud'),
              ),
            ),
            Container(
              color: Colors.red,
              child: Center(
                child: Text('Property Offences and Robbery'),
              ),
            ),
            Container(
              color: Colors.red,
              child: Center(
                child: Text('Sexual offences'),
              ),
            ),
            Container(
              color: Colors.green,
              child: Center(
                child: Text('Homicide'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
