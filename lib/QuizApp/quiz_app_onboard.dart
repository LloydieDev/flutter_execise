import 'package:flutter/material.dart';

class QuizAppOnBoard extends StatelessWidget {
  const QuizAppOnBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset('lib/QuizApp/image/quiz-logo.png', height: 20, width: 20,),
          ElevatedButton(onPressed: (){}, child: Text('Quiz'))
        ],
      ),
    );
  }
}
