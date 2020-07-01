import 'dart:collection';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.orange,
        appBar: AppBar(
          title: Text('Snkr Trades'),
          backgroundColor: Colors.grey,
        ),
        body: ShoePage(),
      ),
    ),
  );
}

class ShoePage extends StatefulWidget {
  @override
  _ShoePageState createState() => _ShoePageState();
}

class _ShoePageState extends State<ShoePage> {
  List<String> urlStrings = [
    'air-jordan-nike-air-max-shoe-sneakers-nike-png-clip-art.png',
    'images/unnamed.png',
    'Sneaker-PNG-Image.png',
    '16-165473_air-jordan-iv-travis-scott-hd-png-download.png',
    '28-289524_yeezy-350-v3-zebra-hd-png-download.png',
    '3',
  ];
  String shoeRoute =
      'air-jordan-nike-air-max-shoe-sneakers-nike-png-clip-art.png';
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
//         first way to use asset image:
            child: FlatButton(
              onPressed: () {
                setState(() {
                  shoeRoute = 'Sneaker-PNG-Image.png';
                });
              },
//              need to add shoe route button change to any of the asset pic in images on pressed
              child: Image.asset('images/$shoeRoute'),
            ),
          ),
//        second way to use asset image:
          Expanded(
            child: FlatButton(
              onPressed: () {
                print("hello right world");
              },
              child: Image.asset('images/unnamed.png'),
            ),
          ),
        ],
      ),
    );
  }
}
