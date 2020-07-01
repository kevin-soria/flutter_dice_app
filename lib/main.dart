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
  String shoeroute =
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
                print("hello left world");
              },
//              need to add shoe route button change to any of the asset pic in images on pressed
              child: Image.asset('images/$shoeroute'),
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
