import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:quixam_frontend_flutter/bloc/questionsBloc/questions_bloc.dart';
import 'package:quixam_frontend_flutter/entities/commun_classes.dart';
import 'package:quixam_frontend_flutter/entities/quiz.dart';
import 'package:quixam_frontend_flutter/entities/student.dart';
import 'package:quixam_frontend_flutter/entities/teacher.dart';
import 'package:quixam_frontend_flutter/repositories/main_repositories_impl.dart';
import 'package:quixam_frontend_flutter/repositories/main_repository.dart';

part 'quizes_event.dart';
part 'quizes_state.dart';

class QuizesBloc extends Bloc<QuizesEvent, QuizesState> {
  MainRepositoryImp mainRepository;
  QuizesBloc({required this.mainRepository, required QuizesState quizesState}) : super(quizesState) {
    on<QuizesEvent>((event, emit) {
      
    });

    on<GetAllTeacherQuizesEvent>((event, emit) async {
       final teacherId = event.teacher.sId;
       List<Quiz> quizzes = await mainRepository.getTeachersQuizzes( teacherId: teacherId!);
       print(quizzes);
        emit(QuizesState(quizList: quizzes, requestState: RequestState.loaded));

    });

  /*
    on<GetAllStudentQuizesEvent>((event, emit) async {
       final id = event.studentId;
       //List<Quiz> quizzes = await mainRepository.getStudentsQuizzes( studentId: id);
       print(quizzes);
      emit(QuizesState(quizList: quizzes, requestState: RequestState.loaded));

    });
*/
    //
 
    on<SaveQuizEvent>((event, emit){

      mainRepository.addTeachersQuiz(event.teacherId, event.quiz);

    });
    on<UpdateQuizEvent>((event, emit) => {

    });
  }
}
