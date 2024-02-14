import 'package:flutter/material.dart';
import 'package:roll_device/QuizApp/Data/question_data.dart';

import 'widget/answer.dart';

class QuizAppHome extends StatefulWidget {
  const QuizAppHome({super.key});

  @override
  State<QuizAppHome> createState() => _QuizAppHomeState();
}

class _QuizAppHomeState extends State<QuizAppHome> {
  @override
  Widget build(BuildContext context) {
    final currentQuestion = questionsData[0];

    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text(
          'Quiz App',
          style: TextStyle(color: Colors.white),
        )),
        backgroundColor: Colors.pinkAccent,
        automaticallyImplyLeading: false,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              currentQuestion.text,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          // map  the question 
          //? Note : we include this map inside of the Wifget using a spread operator(...)
          ...currentQuestion.answer.map((answer) {
            return Answer(
              buttonText: answer,
              onTap: () {},
            );
          }),
        ],
      ),
    );
  }
}
