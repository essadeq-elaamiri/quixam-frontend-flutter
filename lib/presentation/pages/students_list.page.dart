import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quixam_frontend_flutter/bloc/quizesBloc/quizes_bloc.dart';
import 'package:quixam_frontend_flutter/entities/commun_classes.dart';
import 'package:quixam_frontend_flutter/entities/quiz.dart';
import 'package:quixam_frontend_flutter/entities/student.dart';
import 'package:quixam_frontend_flutter/presentation/widgets/quiz_list_item.dart';
import 'package:quixam_frontend_flutter/presentation/widgets/students_list_item.dart';

class StudentsList extends StatelessWidget{
  final st = """{
  "_id": {
    "oid": "627254d7aa35d36c5c1b2b83"
  },
  "firstname": "ali",
  "lastname": "asma",
  "email": "loubna@gmail.com",
  "password": "password",
  "createdAt": {
    "date": "2022-05-04T10:26:31.678Z"
  },
  "updatedAt": {
    "date": "2022-05-04T14:25:38.200Z"
  },
  "__v": 0,
  "quizes": [
    {
      "oid": "62725c788e92aab06719995d"
    }
  ]
}""";
  


  @override
  Widget build(BuildContext context) {
    // access routing sent arguments
    final arguments = (ModalRoute.of(context)?.settings.arguments ??
        <String, dynamic>{}) as Map;
    Quiz quiz = arguments['quiz'];
    return Scaffold(
      appBar: AppBar(
          title: Text('Students list'),
          backgroundColor: Theme.of(context).appBarTheme.backgroundColor),
      body: BlocBuilder<QuizesBloc, QuizesState>(
        builder: (context, state) {
          return Padding(
            child: Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    // TODO: state quizes to listview
                    itemCount: 10,
                    itemBuilder: ((context, index) {
                    return StudentsListItem(student: Student.fromJson(json.decode(st)),);
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
            Navigator.pushNamed(context, "/AddQuizForm");
          },
          hoverColor: Colors.orange,
          child: Icon(Icons.add)),
    );
  }
}
