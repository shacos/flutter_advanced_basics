class QuizQuestion {
  const QuizQuestion(this.question, this.answers);

  final String question;
  final List<String> answers;

  List<String> getShuffeledAnswers() {
    final shuffeledAnswers = List.of(answers);
    shuffeledAnswers.shuffle();
    return shuffeledAnswers;
  }
}