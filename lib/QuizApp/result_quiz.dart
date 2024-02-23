import 'package:flutter/material.dart';

class ResultQuiz extends StatelessWidget {
  const ResultQuiz({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Quiz Result',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      body: const Center(child: Text('REsult'),),
    );
  }
}
