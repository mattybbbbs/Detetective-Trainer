import 'package:detective_trainer/phase2page.dart';
import 'package:detective_trainer/phase3page.dart';
import 'package:flutter/material.dart';
import 'phase1page.dart';

void main() => runApp(MyApp());

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Homescreen(),
      navigatorKey: navigatorKey,
    );
  }
}

class Homescreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromRGBO(37, 45, 75, 1.0),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Phase1page()));
                },
                child: Container(
                  height: 100.0,
                  width: 300.0,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                  ),
                  child: Center(
                    child: Text(
                      'Phase 1',
                      style: TextStyle(
                        fontSize: 50.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Phase2page()));
                },
                child: Container(
                  height: 100.0,
                  width: 300.0,
                  decoration: BoxDecoration(
                    color: Colors.red,
                  ),
                  child: Center(
                    child: Text(
                      'Phase 2',
                      style: TextStyle(
                        fontSize: 50.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Phase3page()));
                },
                child: Container(
                  height: 100.0,
                  width: 300.0,
                  decoration: BoxDecoration(
                    color: Colors.green,
                  ),
                  child: Center(
                    child: Text(
                      'Phase 3',
                      style: TextStyle(
                        fontSize: 50.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
