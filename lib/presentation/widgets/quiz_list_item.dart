import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quixam_frontend_flutter/bloc/questionsBloc/questions_bloc.dart';
import 'package:quixam_frontend_flutter/entities/quiz.dart';

class QuizesListItem extends StatelessWidget {
  Quiz quiz;
  QuizesListItem({required this.quiz});

  @override
  Widget build(BuildContext context) {
    final List<Color> colors = [
      Color.fromRGBO(245, 0, 87, 1),
      Color.fromRGBO(0, 176, 255, 1),
      Color.fromRGBO(0, 191, 166, 1),
      Color.fromRGBO(83, 109, 254, 1),
      Color.fromRGBO(249, 168, 38, 1), //
      Color.fromRGBO(108, 99, 255, 1)

    ];
    return Card(
      color: colors[Random().nextInt(colors.length)],
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(12, 12, 12, 12),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  quiz.title!,
                  style: TextStyle(
                    fontFamily: 'Outfit',
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 22.0,
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                  child: Text(
                    quiz.createdAt!.date!,
                    style: TextStyle(
                      fontFamily: 'Outfit',
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ],
            ),
            IconButton(
                onPressed: () {
                  print(quiz.title!);
                  BlocProvider.of<QuestionsBloc>(context)
                      .add(GetQuizQuestionsEvent(quizId: quiz.iId));

                  Navigator.pushNamed(context, "/QuizDetails", arguments: {
                    'quiz': quiz,
                  });
                },
                icon: Icon(
                  Icons.chevron_right_rounded,
                  color: Colors.white,
                  size: 24,
                )),
          ],
        ),
      ),
    );
  }
}
