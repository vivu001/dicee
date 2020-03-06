import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
          centerTitle: true,
        ),
        body: MyDicePage(),
      ),
    ),
  );
}

class MyDicePage extends StatefulWidget {
  @override
  _MyDicePageState createState() => _MyDicePageState();
}

class _MyDicePageState extends State<MyDicePage> {
  var _diceLeftNr = 1;
  var _diceRightNr = 2;

  int _createRandom() {
    int _d;
    setState(() {
      _d = new Random().nextInt(6) + 1; // generate a random number within range [1-6]
    });
    return _d;
  }

  @override
  Widget build(BuildContext context) {

    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
              child: FlatButton(
                  onPressed: () {
                    _diceLeftNr = _createRandom();
                    print('Left: $_diceLeftNr');
                  },
                  child: Image.asset('images/dice$_diceLeftNr.png'))),
          Expanded(
              child: FlatButton(
                  onPressed: () {
                    _diceRightNr = _createRandom();
                    print('Right: $_diceRightNr');
                  },
                  child: Image.asset('images/dice$_diceRightNr.png')))
        ],
      ),
    );
  }
}
