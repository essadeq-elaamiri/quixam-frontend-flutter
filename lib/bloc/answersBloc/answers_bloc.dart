import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:quixam_frontend_flutter/bloc/quizesBloc/quizes_bloc.dart';
import 'package:quixam_frontend_flutter/entities/answer.dart';

part 'answers_event.dart';
part 'answers_state.dart';

class AnswersBloc extends Bloc<AnswersEvent, AnswersState> {
  AnswersBloc() : super(AnswersInitial()) {
    on<AnswersEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
