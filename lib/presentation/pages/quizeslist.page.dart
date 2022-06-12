import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quixam_frontend_flutter/bloc/quizesBloc/quizes_bloc.dart';
import 'package:quixam_frontend_flutter/bloc/teachersBloc/teachers_bloc.dart';
import 'package:quixam_frontend_flutter/entities/commun_classes.dart';
import 'package:quixam_frontend_flutter/entities/quiz.dart';
import 'package:quixam_frontend_flutter/entities/teacher.dart';
import 'package:quixam_frontend_flutter/presentation/widgets/quiz_list_item.dart';
import 'package:quixam_frontend_flutter/repositories/main_repositories_impl.dart';

class QuizesList extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    //BlocProvider.of<TeachersBloc>(context).add(LogInTeacherEvent(email: "email", password: "password"));
    Teacher teacher = (MainRepositoryImp()).login("email", "password")!;
    print(teacher);
    BlocProvider.of<QuizesBloc>(context).add(GetAllTeacherQuizesEvent(teacher:  teacher));
    return Scaffold(
      appBar: AppBar(
          title: Text('Quizes list'),
          backgroundColor: Theme.of(context).appBarTheme.backgroundColor),
      body: BlocBuilder<QuizesBloc, QuizesState>(
        builder: (context, state) {
          return Padding(
            child: Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    // TODO: state quizes to listview
                    itemCount: 10,//state.quizList.length,
                    itemBuilder: ((context, index) {
                    
                    //return QuizesListItem(quiz: Quiz(title: "hello", createdAt: CreatedAt(date: "2014-05-19"), questions:  [], students: []),);
                    return QuizesListItem(quiz: state.quizList[0]);
                  })),
                ),
              ],
            ),
            padding: const EdgeInsets.all(24.0),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            print("Flutting");
             // AddQuizForm
            //Navigator.pushNamed(context, "/AddQuizForm");
            Navigator.pushNamed(context, "/AddQuizForm", arguments: {
                     'teacherId': teacher.sId
                  });
          },
          hoverColor: Colors.orange,
          child: Icon(Icons.add)),
    );
  }
}
