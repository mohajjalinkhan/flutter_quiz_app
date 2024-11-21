class QuizQuestion {
  // created constructor to show question in app.
  const QuizQuestion(this.text, this.answers);
  final String text;
  final List<String> answers;

  // created suffel list function to shuffel the quiz answers and create new list.
  List shuffelAnswers() {
    final shuffeldList = List.of(answers);
    shuffeldList.shuffle();
    return shuffeldList;
     
  }
}
