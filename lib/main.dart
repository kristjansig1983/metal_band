import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
  MaterialApp(
    home: StagePage(),
  ),
);

class StagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade800,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('What Metal Band Are You?'),
      ),
      body: Stage(),
    );
  }
}

class Stage extends StatefulWidget {
  @override
  State<Stage> createState() => _StageState();
}

class _StageState extends State<Stage> {
  void changeAnswer() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
    });
  }

  int ballNumber = 0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        //Stops image flashing
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onPressed: () {
          changeAnswer();
        },
        child: Image.asset('images/stage$ballNumber.png'),
      ),
    );
  }
}