import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:quixam_frontend_flutter/bloc/quizesBloc/quizes_bloc.dart';
import 'package:quixam_frontend_flutter/entities/answer.dart';
import 'package:quixam_frontend_flutter/repositories/main_repository.dart';

part 'answers_event.dart';
part 'answers_state.dart';

class AnswersBloc extends Bloc<AnswersEvent, AnswersState> {
  MainRepository mainRepository;
  AnswersBloc({required this.mainRepository, required AnswersState answersState}) : super(answersState) {
    on<AnswersEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
