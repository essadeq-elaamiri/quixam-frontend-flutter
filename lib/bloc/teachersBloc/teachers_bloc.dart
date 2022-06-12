import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:quixam_frontend_flutter/bloc/quizesBloc/quizes_bloc.dart';
import 'package:quixam_frontend_flutter/entities/teacher.dart';
import 'package:quixam_frontend_flutter/repositories/main_repository.dart';

part 'teachers_event.dart';
part 'teachers_state.dart';

class TeachersBloc extends Bloc<TeachersEvent, TeachersState> {
  MainRepository mainRepository;
  TeachersBloc({required this.mainRepository, required TeachersState teachersState}) : super(teachersState) {
    on<TeachersEvent>((event, emit) {
      // TODO: implement event handler
    });

     on<LogInTeacherEvent>((event, emit) {

      Teacher teacher = mainRepository.login(event.email, event.password)!;
      emit(TeachersState(teacher: teacher, requestState: RequestState.loaded));

    });
  }
}
