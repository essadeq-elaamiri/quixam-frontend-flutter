part of 'students_bloc.dart';


@immutable
class StudentsState {
   List<Student> studentList;
  RequestState requestState;
  StudentsEvent? lastEvent;
  String? erroMessage;
  StudentsState(
      {required this.studentList,
      required this.requestState,
       this.lastEvent,
      this.erroMessage});
  @override
  List<Object> get props => [studentList, requestState, erroMessage ?? ""];
}
