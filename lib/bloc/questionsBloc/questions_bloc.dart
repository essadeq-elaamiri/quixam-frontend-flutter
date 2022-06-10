import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:quixam_frontend_flutter/bloc/quizesBloc/quizes_bloc.dart';
import 'package:quixam_frontend_flutter/entities/commun_classes.dart';
import 'package:quixam_frontend_flutter/entities/question.dart';
import 'package:quixam_frontend_flutter/repositories/main_repository.dart';

part 'questions_event.dart';
part 'questions_state.dart';

class QuestionsBloc extends Bloc<QuestionsEvent, QuestionsState> {


   MainRepository mainRepository;
  QuestionsBloc({required this.mainRepository, required QuestionsState questionsState}) : super(questionsState) {
    on<QuestionsEvent>((event, emit) {
      print(event);
    });

    on<GetAllQuestionsEvent>((event, emit) {

    });
    on<GetOneQuestionEvent>((event, emit) {

    });
    on<SaveQuestionEvent>((event, emit) {

    });
    on<UpdateQuestionEvent>((event, emit)  {

    });

    on<GetQuizQuestionsEvent>((event, emit){
      print("qq");
    });
  }
}
