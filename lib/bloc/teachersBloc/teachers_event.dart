part of 'teachers_bloc.dart';

@immutable
abstract class TeachersEvent {}

class LogInTeacherEvent extends TeachersEvent {
  String email, password;
  LogInTeacherEvent({required this.email, required this.password});
}
