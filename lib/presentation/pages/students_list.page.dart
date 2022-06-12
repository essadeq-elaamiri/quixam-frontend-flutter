import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quixam_frontend_flutter/bloc/questionsBloc/questions_bloc.dart';
import 'package:quixam_frontend_flutter/bloc/quizesBloc/quizes_bloc.dart';
import 'package:quixam_frontend_flutter/bloc/studentsBloc/students_bloc.dart';
import 'package:quixam_frontend_flutter/entities/commun_classes.dart';
import 'package:quixam_frontend_flutter/entities/quiz.dart';
import 'package:quixam_frontend_flutter/entities/student.dart';
import 'package:quixam_frontend_flutter/presentation/widgets/quiz_list_item.dart';
import 'package:quixam_frontend_flutter/presentation/widgets/students_list_item.dart';

class StudentsList extends StatelessWidget{
 
  


  @override
  Widget build(BuildContext context) {
    // access routing sent arguments
    final arguments = (ModalRoute.of(context)?.settings.arguments ??
        <String, dynamic>{}) as Map;
    Quiz quiz = arguments['quiz'];
    
    BlocProvider.of<StudentsBloc>(context).add(GetQuizsStudentsEvent(quizId: quiz.sId!));

    return Scaffold(
      appBar: AppBar(
          title: Text('Students list'),
          backgroundColor: Theme.of(context).appBarTheme.backgroundColor),
      body: BlocBuilder<StudentsBloc, StudentsState>(
        builder: (context, state) {
          return Padding(
            child: Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    // TODO: state quizes to listview
                    itemCount: state.studentList.length,
                    itemBuilder: ((context, index) {
                    return StudentsListItem(student: state.studentList[index]);
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
            Navigator.pushNamed(context, "/AddStudentForm", arguments: {"quiz":quiz});
          },
          hoverColor: Colors.orange,
          child: Icon(Icons.add)),
    );
  }
}
