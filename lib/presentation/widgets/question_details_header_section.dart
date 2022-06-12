import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quixam_frontend_flutter/bloc/studentsBloc/students_bloc.dart';
import 'package:quixam_frontend_flutter/entities/question.dart';
import 'package:quixam_frontend_flutter/entities/quiz.dart';

class QuestionDetailsInfo extends StatelessWidget {
  Question question;
  QuestionDetailsInfo({required this.question});

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
                question.content!,
                style: TextStyle(
                  fontFamily: 'Lexend Deca',
                  color: Colors.white,
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
                "Score",
                style: TextStyle(
                  fontFamily: 'Outfit',
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                ),
              ),
              
              Text(
                question.score.toString(),
                style: TextStyle(
                  fontFamily: 'Outfit',
                  color: Colors.white,
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
                'Duration',
                style: TextStyle(
                  fontFamily: 'Outfit',
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                ),
              ),
              Text(
                question.duration.toString(),
                style: TextStyle(
                  fontFamily: 'Outfit',
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          ),
        ),
        
        Padding(
          padding: const EdgeInsets.only(top:20,right: 15, bottom: 10),
          child: Row(
             mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(onPressed: () {
               print("deleting quiz ${question.iId!.oid}"); 
              }, icon: Icon(Icons.delete, color: Colors.white,)),
            ],
          ),
        )
        
      ],
    );
  }
}
