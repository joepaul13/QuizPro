import 'package:quizpro/question.dart';

class QuizBrain {

  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question(q: 'You can lead a cow downstairs but not upstairs', a: false),
    Question(q: 'Approximately one quarter of human bones are in the feet', a: true),
    Question(q: 'A slug\'s blood is green', a: true),
    Question(q: 'Charles Dickens wrote \'Tess of the D\'Urbervilles', a: false),
    Question(q: 'The American national anthem is \'The Star-Spangled Banner\'', a: true)
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getQuestionAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if(_questionNumber >= _questionBank.length - 1) {
      print('Now Returning True');
      return true;
    }
    else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}