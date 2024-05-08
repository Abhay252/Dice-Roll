import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDice = 'assets/images/dice-1.png';
  void rollDice() {
    var diceRoll = randomizer.nextInt(6) + 1; //1<>6
    setState(() {
      activeDice = 'assets/images/dice-$diceRoll.png';
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          activeDice,
          width: 200,
        ),
        const SizedBox(height: 40),
        ElevatedButton(
          onPressed: rollDice,
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.limeAccent,
              foregroundColor: Colors.black87,
              textStyle: const TextStyle(fontWeight: FontWeight.w900)),
          child: const Text('Roll Dice'),
        )
      ],
    );
  }
}
