import 'dart:math';
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
    'unnamed.png',
    'Sneaker-PNG-Image.png',
    '16-165473_air-jordan-iv-travis-scott-hd-png-download.png',
    '28-289524_yeezy-350-v3-zebra-hd-png-download.png',
    '65-652876_sneakers-hd-png-download.png',
  ];
  String shoeRoute =
      'air-jordan-nike-air-max-shoe-sneakers-nike-png-clip-art.png';

  String shoeRoute2 = 'Sneaker-PNG-Image.png';

  void funcSwap() {
    int indxno = Random().nextInt(5 + 1);
    if (shoeRoute2 == urlStrings[indxno]) {
      print("it repeated");
    } else {
      shoeRoute2 = urlStrings[indxno];
      print(indxno);
    }
    ;
  }

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
                  int indxno = Random().nextInt(5 + 1);
                  shoeRoute = urlStrings[indxno];
//                  print(indxno);
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
                setState(() {
                  funcSwap();
                });
              },
              child: Image.asset('images/$shoeRoute2'),
            ),
          ),
        ],
      ),
    );
  }
}
