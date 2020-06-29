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
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
//         first way to use asset image:
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image.asset('images/Sneaker-PNG-Image.png'),
            ),
          ),
//        second way to use asset image:
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Image.asset('images/unnamed.png'),
          )),
        ],
      ),
    );
  }
}
