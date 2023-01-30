import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('Dice Toss'),
      ),
      body: const DicePage(),
    ),
  ));
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var leftDiceNumber = 1;
  var rightDiceNumber = 6;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      tossDice();
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: Image.asset('images/dice$leftDiceNumber.png'),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      tossDice();
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: Image.asset('images/dice$rightDiceNumber.png'),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void tossDice() {
    leftDiceNumber = Random().nextInt(5)+1;
    rightDiceNumber = Random().nextInt(5)+1;
  }
}
