import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quixam_frontend_flutter/bloc/studentsBloc/students_bloc.dart';
import 'package:quixam_frontend_flutter/entities/quiz.dart';

class QuizDetailsInfo extends StatelessWidget {
  Quiz quiz;
  QuizDetailsInfo({required this.quiz});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(24, 16, 24, 4),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                quiz.title!,
                style: TextStyle(
                  fontFamily: 'Lexend Deca',
                  color: Color(0xFF090F13),
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(24, 4, 24, 0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Created",
                style: TextStyle(
                  fontFamily: 'Outfit',
                  color: Color(0xFF7C8791),
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                ),
              ),
              
              Text(
                quiz.createdAt!.date!,
                style: TextStyle(
                  fontFamily: 'Outfit',
                  color: Color(0xFF090F13),
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(24, 4, 24, 0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Questions',
                style: TextStyle(
                  fontFamily: 'Outfit',
                  color: Color(0xFF7C8791),
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                ),
              ),
              Text(
                quiz.questions!.length.toString(),
                style: TextStyle(
                  fontFamily: 'Outfit',
                  color: Color(0xFF090F13),
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(24, 4, 24, 25),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    'Students ',
                    style: TextStyle(
                      fontFamily: 'Outfit',
                      color: Color(0xFF7C8791),
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  IconButton(onPressed: () {
                  //BlocProvider.of<StudentsBloc>(context).add();

                  Navigator.pushNamed(context, "/StudentsList", arguments: {
                    'quiz': quiz,
                  });
              }, icon: Icon(Icons.list)),
                ],
              ),
              Text(
                quiz.students!.length.toString(),
                style: TextStyle(
                  fontFamily: 'Outfit',
                  color: Color(0xFF090F13),
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          ),
        ),
        
      ],
    );
  }
}
