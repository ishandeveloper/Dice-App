import 'package:flutter/material.dart';

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

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    var lDiceNo=5;
    var RDiceNo=6;
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
                  onPressed: (){

                  },
                    child: Image(
                    image: AssetImage('images/dice$lDiceNo.png'),
                    width: MediaQuery.of(context).size.width * 0.7,
                  ),
                ),
              ),
              Expanded(
                  child: FlatButton(
                    onPressed: (){

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
