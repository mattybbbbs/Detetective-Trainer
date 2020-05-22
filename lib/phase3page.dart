import 'package:flutter/material.dart';

class Phase3page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text('Phase 3'),
        ),
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: FractionalOffset.topLeft,
                  end: FractionalOffset.bottomRight,
                  colors: [
                Colors.green,
                Colors.black,
              ])),
          child: Column(
            children: <Widget>[
              GestureDetector(
                onTap: () {},
                child: Container(
                  margin: EdgeInsets.all(15.0),
                  height: 70.0,
                  decoration: BoxDecoration(
                      border: Border.all(
                    style: BorderStyle.solid,
                    color: Colors.white,
                    width: 3.0,
                  )),
                  child: Center(
                    child: Text(
                      'Murder',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
