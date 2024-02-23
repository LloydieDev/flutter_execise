import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:roll_device/QuizApp/Data/question_data.dart';
import 'package:roll_device/QuizApp/result_quiz.dart';
import 'widget/answer.dart';

class QuizAppHome extends StatefulWidget {
  const QuizAppHome({super.key});

  @override
  State<QuizAppHome> createState() => _QuizAppHomeState();
}

class _QuizAppHomeState extends State<QuizAppHome> {
 List<String> selectedAnswer = [];


// create a function that added to the list of selecte answer
  void chooseAnswer(String choiceAnswer){
    selectedAnswer.add(choiceAnswer);
    print(selectedAnswer[0]);
  }

  var currentQuestionIndex = 0;
  //create a fucntion that change the index of question in the list
  void changeQuestionIndex(){
    setState(() {
      currentQuestionIndex == 5 ?
       currentQuestionIndex = 5 : 
    currentQuestionIndex++;
    });

    // navigate to the result screen when the user answered all the question
    if(currentQuestionIndex >= 5){
      selectedAnswer = [];
         Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ResultQuiz(),
                  ),
                );
     }
  }


  @override
  Widget build(BuildContext context) {
    final currentQuestion = questionsData[currentQuestionIndex];

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
      body: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              textAlign: TextAlign.center,
              style: GoogleFonts.lato(
                fontSize: 24,
                fontWeight: FontWeight.bold
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            // map  the question 
            //? Note : we include this map inside of the Wifget using a spread operator(...)
            ...currentQuestion.getShuffleAnswers().map((answer) {
              return Answer(
                buttonText: answer,
                onTap: (){
                  changeQuestionIndex();
                  chooseAnswer(answer);
                }
              );
            }),
          ],
        ),
      ),
    );
  }
}
