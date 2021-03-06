import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:quixam_frontend_flutter/bloc/quizesBloc/quizes_bloc.dart';
import 'package:quixam_frontend_flutter/entities/answer.dart';
import 'package:quixam_frontend_flutter/repositories/main_repositories_impl.dart';
import 'package:quixam_frontend_flutter/repositories/main_repository.dart';

part 'answers_event.dart';
part 'answers_state.dart';

class AnswersBloc extends Bloc<AnswersEvent, AnswersState> {
  MainRepositoryImp mainRepository;
  AnswersBloc({required this.mainRepository, required AnswersState answersState}) : super(answersState) {
    on<AnswersEvent>((event, emit) {
      // TODO: implement event handler
    });

    on<GetQuestionsAnswers>((event, emit) async {
      final qId = event.questionId;
      List<Answer>? answers =  await  mainRepository.getQuestionsAnswers(qId);
      print(answers);
      emit(AnswersState(answerList: answers!, requestState: RequestState.loaded));
    });
  }
}
