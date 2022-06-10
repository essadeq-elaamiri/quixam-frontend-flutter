import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:quixam_frontend_flutter/entities/commun_classes.dart';
import 'package:quixam_frontend_flutter/entities/quiz.dart';
import 'package:quixam_frontend_flutter/repositories/main_repository.dart';

part 'quizes_event.dart';
part 'quizes_state.dart';

class QuizesBloc extends Bloc<QuizesEvent, QuizesState> {
  MainRepository mainRepository;
  QuizesBloc({required this.mainRepository, required QuizesState quizesState}) : super(quizesState) {
    on<QuizesEvent>((event, emit) {
      print(event);
    });

    on<GetAllQuizesEvent>((event, emit) => {

    });
    on<GetOneQuizEvent>((event, emit) => {

    });
    on<SaveQuizEvent>((event, emit) => {

    });
    on<UpdateQuizEvent>((event, emit) => {

    });
  }
}
