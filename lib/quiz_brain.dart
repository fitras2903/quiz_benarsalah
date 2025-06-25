import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;

  final List<Question> _questionBank = [
    Question(
        questionText: 'Paus biru adalah hewan terbesar di dunia.',
        questionAnswer: true),
    Question(
        questionText: 'Ular kobra bisa melompat sejauh 10 meter.',
        questionAnswer: false),
    Question(
        questionText: 'Burung kolibri bisa terbang mundur.',
        questionAnswer: true),
    Question(
        questionText:
            'Gajah adalah satu-satunya mamalia yang tidak bisa melompat.',
        questionAnswer: true),
    Question(
        questionText: 'Hiu memiliki tulang dari kartilago, bukan tulang keras.',
        questionAnswer: true),
    Question(
        questionText: 'Kura-kura bisa keluar dari cangkangnya.',
        questionAnswer: false),
    Question(
        questionText: 'Lumba-lumba tidur dengan satu mata terbuka.',
        questionAnswer: true),
    Question(questionText: 'Gurita memiliki tiga hati.', questionAnswer: true),
    Question(
        questionText: 'Kucing bisa merasakan rasa manis.',
        questionAnswer: false),
    Question(
        questionText: 'Jerapah hanya tidur sekitar 30 menit dalam sehari.',
        questionAnswer: true),
    Question(
        questionText: 'Katak bernapas melalui kulitnya.', questionAnswer: true),
    Question(
        questionText: 'Kanguru tidak bisa berjalan mundur.',
        questionAnswer: true),
    Question(
        questionText: 'Kupu-kupu merasakan rasa dengan sayapnya.',
        questionAnswer: false),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  int getTotalQuestions() {
    return _questionBank.length;
  }

  void reset() {
    _questionNumber = 0;
  }
}
