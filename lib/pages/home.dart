import 'package:flutter/material.dart';
import 'package:roll_device/Global%20Widget/global_app_bar.dart';
import 'package:roll_device/RollDice/roll_dice_home.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const GlobalAppBAr(
          color: Colors.blue,
          appBarTitle: 'Project',
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: ElevatedButton(
                onPressed: () {
                    Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const RollDiceHome()),
            );
                },
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                    fixedSize: const Size(120, 50),
                    backgroundColor: Colors.pinkAccent),
                child: const Text(
                  'Roll Dice',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
          ],
        ));
  }
}
