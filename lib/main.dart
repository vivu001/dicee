import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.amber,
        appBar: AppBar(
          title: Text('Dicee', style: TextStyle(color: Colors.redAccent)),
          backgroundColor: Colors.indigo,
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

  void _createRandom() {
    setState(() {
      _diceLeftNr = new Random().nextInt(6) + 1;
      _diceRightNr = new Random().nextInt(6) + 1;
      print('Left: $_diceLeftNr');
      print('Right: $_diceRightNr');
    });
  } // generate a random number within range [1-6]

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
              child: FlatButton(
                  onPressed: () {
                    _createRandom();
                  },
                  child: Image.asset('images/dice$_diceLeftNr.png'))),
          Expanded(
              child: FlatButton(
                  onPressed: () {
                    _createRandom();
                  },
                  child: Image.asset('images/dice$_diceRightNr.png')))
        ],
      ),
    );
  }
}
