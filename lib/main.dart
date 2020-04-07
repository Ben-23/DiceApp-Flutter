import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.red.shade500,
      body: DicePage(),
      appBar: AppBar(
        backgroundColor: Colors.red,
        centerTitle: true,
        elevation: 5.0,
        title: Text(
          'Roll Me',
          textAlign: TextAlign.center,
        ),
      ),
    ),
  ));
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftno = 1, rightno = 1;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'Click on any dice to roll it',
          style: TextStyle(color: Colors.white),
        ),
        SizedBox(
          height: 50.0,
        ),
        Center(
          child: Row(
            children: <Widget>[
              Expanded(
                child: FlatButton(
                  child: Image.asset('images/dice$leftno.png'),
                  onPressed: () {
                    setState(() {
                      leftno = Random().nextInt(6) + 1;
                      rightno = Random().nextInt(6) + 1;
                    });
                  },
                ),
              ),
              Expanded(
                child: FlatButton(
                  child: Image.asset('images/dice$rightno.png'),
                  onPressed: () {
                    setState(() {
                      rightno = Random().nextInt(6) + 1;
                      leftno = Random().nextInt(6) + 1;
                    });
                  },
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
