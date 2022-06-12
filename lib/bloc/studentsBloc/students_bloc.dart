import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:quixam_frontend_flutter/bloc/quizesBloc/quizes_bloc.dart';
import 'package:quixam_frontend_flutter/entities/student.dart';
import 'package:quixam_frontend_flutter/main.dart';
import 'package:quixam_frontend_flutter/repositories/main_repositories_impl.dart';
import 'package:quixam_frontend_flutter/repositories/main_repository.dart';

part 'students_event.dart';
part 'students_state.dart';

class StudentsBloc extends Bloc<StudentsEvent, StudentsState> {
  MainRepositoryImp mainRepository;
  StudentsBloc({required this.mainRepository, required StudentsState studentsState}) : super(studentsState) {
    on<StudentsEvent>((event, emit) {
      // TODO: implement event handler
    });

    //StudentsBloc
    on<GetQuizsStudentsEvent>((event, emit) async {
      final id = event.quizId;
      List<Student> students = await mainRepository.getQuizsStudents(quizId: id);
      emit(StudentsState(studentList: students, requestState: RequestState.loaded));
    });
  }
}
