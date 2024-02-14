class QuizQuestion {
  final String text;
  final List<String> answer;
  const QuizQuestion(this.text, this.answer);

 // chaining method
  List<String> getShuffleAnswers(){
     final shuffledList =  List.of(answer);
     shuffledList.shuffle();
     return shuffledList;
  }
}