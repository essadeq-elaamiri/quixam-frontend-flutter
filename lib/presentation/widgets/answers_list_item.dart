import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:quixam_frontend_flutter/entities/answer.dart';
import 'package:quixam_frontend_flutter/entities/question.dart';
import 'package:quixam_frontend_flutter/entities/question.dart';

class AnswersListItem extends StatelessWidget {
  Answer answer;
  AnswersListItem({required this.answer});
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
                answer.content!,
                style: TextStyle(
                  fontFamily: 'Outfit',
                  color: Color(0xFF101213),
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 22.0,),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                child: Text(
                  answer.isTrue!? "Correct" : "Uncorrect" ,
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
          IconButton(onPressed: () {
            //print(answer.content!);
            // sending to answers list
            
          }, icon: Icon(
            Icons.delete,
            color: Color.fromARGB(255, 254, 72, 59),
            size: 24,
            
          ))
          ,
        ],
      ),
    ),
    
    
    );
  }
}
