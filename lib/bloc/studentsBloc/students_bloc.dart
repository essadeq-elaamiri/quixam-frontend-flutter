import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:quixam_frontend_flutter/bloc/quizesBloc/quizes_bloc.dart';
import 'package:quixam_frontend_flutter/entities/student.dart';
import 'package:quixam_frontend_flutter/repositories/main_repository.dart';

part 'students_event.dart';
part 'students_state.dart';

class StudentsBloc extends Bloc<StudentsEvent, StudentsState> {
  MainRepository mainRepository;
  StudentsBloc({required this.mainRepository, required StudentsState studentsState}) : super(studentsState) {
    on<StudentsEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
