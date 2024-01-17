import 'dart:math';
import 'package:flutter/material.dart';
import 'package:roll_device/Global%20Widget/global_app_bar.dart';

class RollDiceHome extends StatefulWidget {
  const RollDiceHome({super.key});

  @override
  State<RollDiceHome> createState() => _RollDiceHomeState();
}

class _RollDiceHomeState extends State<RollDiceHome> {

  var activeImage = 'lib/RollDice/image/dice-1.png';

  Future<void> rollDice() async {
    int randomDiceNumber = Random().nextInt(6) + 1;
    setState(() {
      activeImage = 'lib/RollDice/image/dice-$randomDiceNumber.png';
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const GlobalAppBAr(color: Colors.pinkAccent, appBarTitle: "Roll Dice"),
      backgroundColor: Colors.grey[200],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              activeImage,
              height: 100,
              width: 100,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: rollDice,
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
                fixedSize: const Size(100, 50),
                backgroundColor: Colors.pinkAccent),
            child: const Text(
              'roll',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}