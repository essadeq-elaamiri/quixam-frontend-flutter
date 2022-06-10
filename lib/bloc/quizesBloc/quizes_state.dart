part of 'quizes_bloc.dart';

enum RequestState { loaded, loading, error, none }

class QuizesState {
  List<Quiz> quizList;
  RequestState requestState;
  QuizesEvent? lastEvent;
  String? erroMessage;
  QuizesState(
      {required this.quizList,
      required this.requestState,
       this.lastEvent,
      this.erroMessage});
  @override
  List<Object> get props => [quizList, requestState, erroMessage ?? ""];
}

