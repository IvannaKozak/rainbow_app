import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  Color mainColor =
      Color.fromARGB(255, 238, 211, 234); //Color.fromARGB(255, 215, 209, 150);
  bool change1Color = false;
  bool change2Color = false;
  bool change3Color = false;
  bool change4Color = false;
  bool change5Color = false;
  bool change6Color = false;
  bool change7Color = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rainbow Colors'),
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.stretch,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // Expanded(child: Text('Мартуся Олекса')),
            Expanded(
                child: RainbowButton(
              text: 'Red',
              colour: change1Color == true ? Colors.red : mainColor,
              onClicked: () {
                setState(() {
                  change1Color = true;
                });
              },
            )),
            Expanded(
                child: RainbowButton(
              text: 'Orange',
              colour: change2Color == true ? Colors.orange : mainColor,
              onClicked: () {
                setState(() {
                  change2Color = true;
                });
              },
            )),
            Expanded(
                child: RainbowButton(
              text: 'Yellow',
              colour: change3Color == true ? Colors.yellow : mainColor,
              onClicked: () {
                setState(() {
                  change3Color = true;
                });
              },
            )),
            Expanded(
                child: RainbowButton(
              text: 'Green',
              colour: change4Color == true
                  ? Color.fromARGB(255, 35, 186, 40)
                  : mainColor,
              onClicked: () {
                setState(() {
                  change4Color = true;
                });
              },
            )),
            Expanded(
                child: RainbowButton(
              text: 'Blue',
              colour: change5Color == true ? Colors.blue : mainColor,
              onClicked: () {
                setState(() {
                  change5Color = true;
                });
              },
            )),
            Expanded(
                child: RainbowButton(
              text: 'Indigo',
              colour: change6Color == true ? Colors.indigo : mainColor,
              onClicked: () {
                setState(() {
                  change6Color = true;
                });
              },
            )),
            Expanded(
                child: RainbowButton(
              text: 'Violet',
              colour: change7Color == true ? Colors.purple : mainColor,
              onClicked: () {
                setState(() {
                  change7Color = true;
                });
              },
            )),
            Expanded(
                child: RainbowButton(
              text: 'CLEAN',
              colour: Colors.black,
              onClicked: () {
                setState(() {
                  change1Color = false;
                  change2Color = false;
                  change3Color = false;
                  change4Color = false;
                  change5Color = false;
                  change6Color = false;
                  change7Color = false;
                });
              },
            ))
          ]),
    );
  }
}

const kMainTextStyle = TextStyle(fontSize: 20.0, color: Colors.white);

class RainbowButton extends StatelessWidget {
  RainbowButton({this.onClicked, this.text, this.colour});
  final Function onClicked;
  final String text;
  final Color colour;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 0.0,
      child: Text(
        text,
        style: kMainTextStyle,
      ),
      onPressed: onClicked,
      //shape: CircleBorder(),
      fillColor: colour,
    );
  }
}
