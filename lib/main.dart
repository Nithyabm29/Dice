import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(DicePage());

class DicePage extends StatefulWidget {
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var leftDice = 1;
  var rightDice = 1;

  void roleDice() {
    setState(() {
      leftDice = Random().nextInt(6) + 1;
      rightDice = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.pink,
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'DICE',
            style: TextStyle(
              fontFamily: 'Courgette',
            ),
          ),
          backgroundColor: Colors.pink[600],
        ),
        body: Center(
          child: Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.pink),
                    elevation: MaterialStatePropertyAll(0),
                  ),
                  onPressed: () {
                    roleDice();
                  },
                  child: Image.asset('images/dice$leftDice.png'),
                ),
              ),
              const SizedBox(width: 10.0),
              Expanded(
                child: ElevatedButton(
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.pink),
                    elevation: MaterialStatePropertyAll(0),
                  ),
                  onPressed: () {
                    roleDice();
                  },
                  child: Image.asset('images/dice$rightDice.png'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
