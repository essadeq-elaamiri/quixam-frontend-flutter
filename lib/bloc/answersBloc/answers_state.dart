part of 'answers_bloc.dart';


@immutable
class AnswersState {
   List<Answer> answerList;
  RequestState requestState;
  AnswersEvent? lastEvent;
  String? erroMessage;
  AnswersState(
      {required this.answerList,
      required this.requestState,
       this.lastEvent,
      this.erroMessage});
  @override
  List<Object> get props => [answerList, requestState, erroMessage ?? ""];
}
