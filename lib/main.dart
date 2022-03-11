import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: Icon(
            Icons.games,
            color: Colors.amber,
          ),
          title: Text(
            'Dice',
            style: TextStyle(
              fontSize: 30.0,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: dicebody(),
      ),
    ),
  );
}
class dicebody extends StatefulWidget {
  const dicebody({Key? key}) : super(key: key);

  @override
  State<dicebody> createState() => _dicebodyState();
}

class _dicebodyState extends State<dicebody> {
  int leftdice=1;
  int rightdice=1;
  void touchstate(){
    setState(() {
      leftdice=Random().nextInt(6)+1;
      rightdice=Random().nextInt(6)+1;
      print('left State change');
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: (){
                touchstate();
              },
              child: Image.asset(
                'images/dice$leftdice.png',
              ),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: (){
                touchstate();
              },
              child: Image.asset(
                'images/dice$rightdice.png',
              ),
            ),
          ),
        ],
      ),
    );
  }
}



