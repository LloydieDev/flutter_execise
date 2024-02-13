import 'package:flutter/material.dart';

import 'widget/answer_button.dart';

class QuizAppHome extends StatefulWidget {
  const QuizAppHome({super.key});

  @override
  State<QuizAppHome> createState() => _QuizAppHomeState();
}

class _QuizAppHomeState extends State<QuizAppHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text(
          'Questions',
          style: TextStyle(color: Colors.white),
        )),
        backgroundColor: Colors.pinkAccent,
        automaticallyImplyLeading: false,
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              'The Questions..',
            ),
          ),
          SizedBox(
            height: 30,
          ),
          AnswerButton(buttonText: 'Answer 1',),
          AnswerButton(buttonText: 'Answer 2',),
          AnswerButton(buttonText: 'Answer 3',),
         
        ],
      ),
    );
  }
}

