import 'package:flutter/material.dart';
import 'dart:math';
import 'package:flutter/services.dart';

import 'about.dart';

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
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Dice Roll'.toUpperCase(),
        ),
        leading: Icon(Icons.videogame_asset),
        actions: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 20),
            child: GestureDetector(
              child: Icon(Icons.info),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>AboutPage()));
              },
            ),
          )
        ],
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
                  },
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
