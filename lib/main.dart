import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quixam_frontend_flutter/bloc/quizesBloc/quizes_bloc.dart';
import 'package:quixam_frontend_flutter/presentation/pages/quizeslist.page.dart';
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
              create: (context) => QuizesBloc(
                  mainRepository: MainRepository(),
                  quizesState: QuizesState(
                      quizList: [], requestState: RequestState.none))),
        ],
        child: MaterialApp(
          themeMode: ThemeMode.system,
          theme: ThemeData(primarySwatch: Colors.orange)/*ThemeData.dark()*/,
          darkTheme: ThemeClass.darkTheme,
          debugShowCheckedModeBanner: false,
          routes: {
            "/QuizesList": (context) => QuizesList(),
          },
          initialRoute: "/QuizesList",
        ));
  }
}

class ThemeClass {
  static ThemeData lightTheme = ThemeData(
    
      primaryColor: Colors.orange,
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
