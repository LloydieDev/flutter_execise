class QuizQuestion {
  final String text;
  final List<String> answer;
  const QuizQuestion(this.text, this.answer);

 // chaining method
  List<String> getShuffleAnswers(){
     final shuffledList =  List.of(answer); // making a copy of list that became a shuffle
     shuffledList.shuffle();
     return shuffledList;
  }
}