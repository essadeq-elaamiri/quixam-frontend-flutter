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
    return Card(
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
                    color: Color(0xFF101213),
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
                      color: Color(0xFF57636C),
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
                  BlocProvider.of<QuestionsBloc>(context).add(GetQuizQuestionsEvent(quizId: quiz.iId));

                  Navigator.pushNamed(context, "/QuizDetails", arguments: {
                    'quiz': quiz,
                  });
                },
                icon: Icon(
                  Icons.chevron_right_rounded,
                  color: Color(0xFF95A1AC),
                  size: 24,
                )),
          ],
        ),
      ),
    );
  }
}
