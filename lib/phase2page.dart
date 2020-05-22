import 'package:flutter/material.dart';

class Phase2page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Phase 2'),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: FractionalOffset.topLeft,
              end: FractionalOffset.bottomRight,
              colors: [
                Colors.red,
                Colors.black,
              ]),
        ),
        child: Column(
          children: <Widget>[
            GestureDetector(
              onTap: () {},
              child: Container(
                margin: EdgeInsets.all(15.0),
                height: 70.0,
                decoration: BoxDecoration(
                    border: Border.all(
                  color: Colors.white,
                  style: BorderStyle.solid,
                  width: 3.0,
                )),
                child: Center(
                  child: Text(
                    'Sexual Offences',
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
                  style: BorderStyle.solid,
                  width: 3.0,
                )),
                child: Center(
                  child: Text(
                    'Fraud',
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
