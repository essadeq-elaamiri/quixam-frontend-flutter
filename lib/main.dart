import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quixam_frontend_flutter/bloc/quizesBloc/quizes_bloc.dart';
import 'package:quixam_frontend_flutter/repositories/main_repository.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
              create: (context) => QuizesBloc(mainRepository: MainRepository(), quizesState: QuizesState(quizList: [], requestState: RequestState.none)) ),
          
        ],
        child: MaterialApp(
          theme: ThemeData(primarySwatch: Colors.orange),
          routes: {
            "/contacts": (context) => ContactPage(),
            "/conversation": (context) => ConversationPage(),
          },
          initialRoute: "/contacts",
        ));
  }
}