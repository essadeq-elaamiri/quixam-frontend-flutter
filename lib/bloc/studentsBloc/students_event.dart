part of 'students_bloc.dart';

@immutable
abstract class StudentsEvent {}

class GetQuizsStudentsEvent extends StudentsEvent {
  String quizId;
  GetQuizsStudentsEvent({required this.quizId});
}
