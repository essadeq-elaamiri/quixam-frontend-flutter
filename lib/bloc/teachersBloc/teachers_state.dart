part of 'teachers_bloc.dart';


@immutable
class TeachersState {
   List<Teacher> teacherList;
  RequestState requestState;
  TeachersEvent? lastEvent;
  String? erroMessage;
  TeachersState(
      {required this.teacherList,
      required this.requestState,
       this.lastEvent,
      this.erroMessage});
  @override
  List<Object> get props => [teacherList, requestState, erroMessage ?? ""];
}
