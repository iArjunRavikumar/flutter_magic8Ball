import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MaterialApp(
      home: BallPage(),
    ));

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.blue[500],
          appBar: AppBar(
            title: Text('Ask Me Anything!'),
            backgroundColor: Colors.blue[800],
          ),
          body: BallState()),
    );
  }
}

class BallState extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<BallState> {
  var ballNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: () {
          setState(() {
            ballNumber = Random().nextInt(4) + 1;
          });
        },
        child: Image.asset('images/ball$ballNumber.png'),
      ),
    );
  }
}
