part of 'questions_bloc.dart';

@immutable
abstract class QuestionsEvent {}

class GetAllQuestionsEvent extends QuestionsEvent{}
class GetOneQuestionEvent extends QuestionsEvent{
  Id questionId;
  GetOneQuestionEvent({required this.questionId});
}

class GetQuizQuestionsEvent extends QuestionsEvent{
  String? quizId;
  GetQuizQuestionsEvent({ this.quizId});
}

class SaveQuestionEvent extends QuestionsEvent{
  Question question;
  SaveQuestionEvent({required this.question});
}

class UpdateQuestionEvent extends QuestionsEvent{
  String questionId;
  Question question;
  UpdateQuestionEvent({required this.questionId, required this.question});
}

