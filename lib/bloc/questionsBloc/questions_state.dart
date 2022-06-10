part of 'questions_bloc.dart';

@immutable
class QuestionsState {
   List<Question> questionList;
  RequestState requestState;
  QuestionsEvent? lastEvent;
  String? erroMessage;
  QuestionsState(
      {required this.questionList,
      required this.requestState,
       this.lastEvent,
      this.erroMessage});
  @override
  List<Object> get props => [questionList, requestState, erroMessage ?? ""];
}
