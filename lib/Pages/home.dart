import 'package:flutter/material.dart';
import 'dart:math';

class DiceApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DicePage(),
      theme: ThemeData(
        primarySwatch: Colors.red,
        brightness: Brightness.light,
      ),
    );
  }
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var lDiceNo = 5;
  var rDiceNo = 6;

  void randomizer() {
    setState(() {
      lDiceNo = Random().nextInt(6) + 1;
      rDiceNo = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Dice Roll'.toUpperCase(),
        ),
        // centerTitle: true,
        elevation: 0,
      ),
      backgroundColor: Colors.red,
      body: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              Expanded(
                child: FlatButton(
                  onPressed: () {
                    randomizer();
                  }
                  ,
                  child: Image(
                    image: AssetImage('images/dice$lDiceNo.png'),
                    width: MediaQuery.of(context).size.width * 0.7,
                  ),
                ),
              ),
              Expanded(
                  child: FlatButton(
                onPressed: () {
                  randomizer();
                },
                child: Image(
                  image: AssetImage('images/dice$rDiceNo.png'),
                  width: MediaQuery.of(context).size.width * 0.7,
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
