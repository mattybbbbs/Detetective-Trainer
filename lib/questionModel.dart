class Question {
  String questionText;
  List questionAnswers;
  String correctAnswer;

  Question(String question, List answers, String correct) {
    questionText = question;
    questionAnswers = answers;
    correctAnswer = correct;
  }
}

//This is the Question Class that generates Question Objects that contain a string
//for the question, a list or array of answers and a string with the correct answer
