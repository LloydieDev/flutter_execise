import 'package:flutter/material.dart';
import 'package:roll_device/QuizApp/quiz_app_home.dart';

class QuizAppOnBoard extends StatelessWidget {
  const QuizAppOnBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pinkAccent,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            Center(
              child: Image.asset('lib/QuizApp/image/quiz_logo.png'),
            ),
            const SizedBox(height: 100),
            OutlinedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const QuizAppHome(),
                  ),
                );
              },
              style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.black,
                  fixedSize: const Size(200, 50),
                  side: const BorderSide(color: Colors.white),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  )),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.keyboard_double_arrow_right,
                    color: Colors.white,
                  ),
                  Text(
                    'Quiz App',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
