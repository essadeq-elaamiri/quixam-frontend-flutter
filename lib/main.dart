import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quixam_frontend_flutter/bloc/answersBloc/answers_bloc.dart';
import 'package:quixam_frontend_flutter/bloc/questionsBloc/questions_bloc.dart';
import 'package:quixam_frontend_flutter/bloc/quizesBloc/quizes_bloc.dart';
import 'package:quixam_frontend_flutter/bloc/studentsBloc/students_bloc.dart';
import 'package:quixam_frontend_flutter/bloc/teachersBloc/teachers_bloc.dart';
import 'package:quixam_frontend_flutter/presentation/pages/add_student.page.dart';
import 'package:quixam_frontend_flutter/presentation/pages/addquestion.page.dart';
import 'package:quixam_frontend_flutter/presentation/pages/addquiz.page.dart';
import 'package:quixam_frontend_flutter/presentation/pages/login.page.dart';
import 'package:quixam_frontend_flutter/presentation/pages/question_details.page.dart';
import 'package:quixam_frontend_flutter/presentation/pages/quiz_details.page.dart';
import 'package:quixam_frontend_flutter/presentation/pages/quizeslist.page.dart';
import 'package:quixam_frontend_flutter/presentation/pages/students_list.page.dart';
import 'package:quixam_frontend_flutter/repositories/main_repository.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var mainRepository = MainRepository();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => QuizesBloc(
                mainRepository: mainRepository,
                quizesState:
                    QuizesState(quizList: [], requestState: RequestState.none)),
          ),
          BlocProvider(
            create: (context) => QuestionsBloc(
                mainRepository: mainRepository,
                questionsState: QuestionsState(
                    questionList: [], requestState: RequestState.none)),
          ),
          BlocProvider(
            create: (context) => AnswersBloc(
                mainRepository: mainRepository,
                answersState: AnswersState(
                    answerList: [], requestState: RequestState.none)),
          ),
          BlocProvider(
            create: (context) => TeachersBloc(
                mainRepository: mainRepository,
                teachersState: TeachersState(
                    teacherList: [], requestState: RequestState.none)),
          ),
          BlocProvider(
            create: (context) => StudentsBloc(
                mainRepository: mainRepository,
                studentsState: StudentsState(
                    studentList: [], requestState: RequestState.none)),
          ),
        ],
        child: MaterialApp(
          themeMode: ThemeMode.system,
          theme: ThemeData(primarySwatch: Colors.purple) /*ThemeData.dark()*/,
          darkTheme: ThemeClass.darkTheme,
          debugShowCheckedModeBanner: false,
          routes: {
            "/QuizesList": (context) => QuizesList(),
            "/QuizDetails": (context) => QuizDetails(),
            "/QuestionDetails": (context) => QuestionDetails(),
            "/AddQuizForm":(context) => AddQuizForm(),
            "/LoginPage":(context) => LoginPage(),
            "/StudentsList":(context) => StudentsList(),
            "/AddQuestionForm": (context) =>AddQuestionForm(),
            "/AddStudentForm":(context) => AddStudentForm(),
          },
          initialRoute: "/QuizesList",
        ));
  }
}

class ThemeClass {
  static ThemeData lightTheme = ThemeData(
      primaryColor: Colors.purple,
      scaffoldBackgroundColor: Colors.white,
      colorScheme: ColorScheme.light(),
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.orange,
      ));

  static ThemeData darkTheme = ThemeData(
      scaffoldBackgroundColor: Colors.black,
      colorScheme: ColorScheme.dark(),
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.black,
      ));
}
