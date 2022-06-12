part of 'teachers_bloc.dart';


@immutable
class TeachersState {
  Teacher? teacher;
  RequestState requestState;
  TeachersEvent? lastEvent;
  String? erroMessage;
  TeachersState(
      { this.teacher,
      required this.requestState,
       this.lastEvent,
      this.erroMessage});
  @override
  List<Object?> get props => [teacher, requestState, erroMessage ?? ""];
}
