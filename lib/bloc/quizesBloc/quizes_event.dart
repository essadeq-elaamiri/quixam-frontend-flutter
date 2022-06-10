part of 'quizes_bloc.dart';


@immutable
abstract class QuizesEvent {}

class GetAllQuizesEvent extends QuizesEvent{}
class GetOneQuizEvent extends QuizesEvent{
  Id quizId;
  GetOneQuizEvent({required this.quizId});
}

class SaveQuizEvent extends QuizesEvent{
  Quiz quiz;
  SaveQuizEvent({required this.quiz});
}

class UpdateQuizEvent extends QuizesEvent{
  Id quizId;
  Quiz quiz;
  UpdateQuizEvent({required this.quizId, required this.quiz});
}


