part of 'quizes_bloc.dart';


@immutable
abstract class QuizesEvent {}

class GetAllQuizesEvent extends QuizesEvent{}

class GetOneQuizEvent extends QuizesEvent{
  String quizId;
  GetOneQuizEvent({required this.quizId});
}

class GetAllStudentQuizesEvent extends QuizesEvent{
  String studentId;
  GetAllStudentQuizesEvent({required this.studentId});
}

class GetAllTeacherQuizesEvent extends QuizesEvent{
  Teacher teacher;
  GetAllTeacherQuizesEvent({required this.teacher});
}

class SaveQuizEvent extends QuizesEvent{
  Quiz quiz;
  SaveQuizEvent({required this.quiz});
}

class UpdateQuizEvent extends QuizesEvent{
  String quizId;
  Quiz quiz;
  UpdateQuizEvent({required this.quizId, required this.quiz});
}


