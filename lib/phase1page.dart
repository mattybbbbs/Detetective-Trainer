import 'package:flutter/material.dart';
import 'drugQuestions.dart';

class Phase1page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Phase 1'),
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: FractionalOffset.topLeft,
                end: FractionalOffset.bottomRight,
                colors: [
              Colors.blue,
              Colors.black,
            ])),
        child: Column(
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
          ],
        ),
      ),
    );
  }
}
