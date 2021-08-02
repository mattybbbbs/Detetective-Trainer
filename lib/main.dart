
import 'package:flutter/material.dart';
import 'homescreen.dart';

void main() => runApp(
  RestartWidget(
    child:
  MyApp(),
  ),
  );

  class RestartWidget extends StatefulWidget {
  RestartWidget({this.child});

  final Widget child;

  static void restartApp(BuildContext context) {
    context.findAncestorStateOfType<_RestartWidgetState>().restartApp();
  }

  @override
  _RestartWidgetState createState() => _RestartWidgetState();
}

class _RestartWidgetState extends State<RestartWidget> {
  Key key = UniqueKey();

  void restartApp() {
    setState(() {
      key = UniqueKey();
    });
  }

  @override
  Widget build(BuildContext context) {
    return KeyedSubtree(
      key: key,
      child: widget.child,
    );
  }
}

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      navigatorKey: navigatorKey,
    );
  }
}

// class MessedUp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           backgroundColor: Color.fromRGBO(37, 45, 75, 1.0),
//           title: Text('Detective Trainer'),
//         ),
//         backgroundColor: Color.fromRGBO(37, 45, 75, 1.0),
//         body: Center(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: <Widget>[
//               Container(
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.only(
//                     bottomLeft: Radius.circular(15.0),
//                     bottomRight: Radius.circular(15.0),
//                   ),
//                   color: Color.fromRGBO(37, 45, 75, 1.0),
//                 ),
//                 child: Center(
//                   child: Text(
//                     'Choose a topic',
//                     textAlign: TextAlign.center,
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 40.0,
//                     ),
//                   ),
//                 ),
//               ),
//               GestureDetector(
//                 onTap: () {
//                   Navigator.push(context,
//                       MaterialPageRoute(builder: (context) => Phase1page()));
//                 },
//                 child: Container(
//                   height: 100.0,
//                   width: 300.0,
//                   decoration: BoxDecoration(
//                     color: Colors.blue,
//                   ),
//                   child: Center(
//                     child: Text(
//                       'Phase 1',
//                       style: TextStyle(
//                         fontSize: 50.0,
//                         color: Colors.white,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               GestureDetector(
//                 onTap: () {
//                   Navigator.push(context,
//                       MaterialPageRoute(builder: (context) => Phase2page()));
//                 },
//                 child: Container(
//                   height: 100.0,
//                   width: 300.0,
//                   decoration: BoxDecoration(
//                     color: Colors.red,
//                   ),
//                   child: Center(
//                     child: Text(
//                       'Phase 2',
//                       style: TextStyle(
//                         fontSize: 50.0,
//                         color: Colors.white,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               GestureDetector(
//                 onTap: () {
//                   Navigator.push(context,
//                       MaterialPageRoute(builder: (context) => Phase3page()));
//                 },
//                 child: Container(
//                   height: 100.0,
//                   width: 300.0,
//                   decoration: BoxDecoration(
//                     color: Colors.green,
//                   ),
//                   child: Center(
//                     child: Text(
//                       'Phase 3',
//                       style: TextStyle(
//                         fontSize: 50.0,
//                         color: Colors.white,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
