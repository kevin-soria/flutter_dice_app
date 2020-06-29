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
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
//         first way to use asset image:
          child: Image(
            image: AssetImage('images/Sneaker-PNG-Image.png'),
          ),
        ),
//        second way to use asset image:
        Expanded(child: Image.asset('images/unnamed.png')),
      ],
    );
  }
}
