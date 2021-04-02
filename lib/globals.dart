int score = 0; 

int questionNumber = 0;

int questionNumberPlusOne = questionNumber + 1;

double percentageCorrect() {
  return score / questionNumberPlusOne * 100;
}
