part of 'answers_bloc.dart';

@immutable
abstract class AnswersEvent {}

class GetQuestionsAnswers extends AnswersEvent{
  String questionId;
  GetQuestionsAnswers({required this.questionId});
}