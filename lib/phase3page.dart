import 'package:flutter/material.dart';

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
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 3.0,
                        color: Colors.green,
                      ),
                      color: Colors.green[900],
                    ),
                    height: 75.0,
                    child: Center(
                        child: Text(
                      'Homicide',
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
        ));
  }
}
