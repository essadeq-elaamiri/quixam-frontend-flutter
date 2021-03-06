import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quixam_frontend_flutter/bloc/questionsBloc/questions_bloc.dart';
import 'package:quixam_frontend_flutter/entities/commun_classes.dart';
import 'package:quixam_frontend_flutter/entities/question.dart';
import 'package:quixam_frontend_flutter/entities/quiz.dart';
import 'package:quixam_frontend_flutter/presentation/widgets/question_list_item.dart';
import 'package:quixam_frontend_flutter/presentation/widgets/quiz_details_head_section.dart';

class QuizDetails extends StatelessWidget {
  const QuizDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   
    // access routing sent arguments
    final arguments = (ModalRoute.of(context)?.settings.arguments ??
        <String, dynamic>{}) as Map;
    Quiz quiz = arguments['quiz'];
     BlocProvider.of<QuestionsBloc>(context).add(GetQuizQuestionsEvent(quizId: quiz.sId));

    //print(arguments);
    return Scaffold(
      appBar: AppBar(
          title: Text("[${quiz.title}] quiz details"),
          backgroundColor: Theme.of(context).appBarTheme.backgroundColor),
      body: BlocBuilder<QuestionsBloc, QuestionsState>(
        builder: (context, state) {
          return Padding(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.only(bottom: 20),
                  child: Card(
                    
                    color: Color.fromRGBO(245, 0, 87, 1),
                    child: QuizDetailsInfo(quiz: quiz),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                      // TODO: state quizes to listview
                      itemCount: 10,//state.questionList.length,
                      itemBuilder: ((context, index) {
                        print(state.questionList[0].content);
                        return QuestionsListItem(
                            question: state.questionList[0]);
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
            Navigator.pushNamed(context, "/AddQuestionForm", arguments: {
                    'quiz': quiz,
                  });
           
          },
          hoverColor: Colors.orange,
          backgroundColor: Color.fromRGBO(245, 0, 87, 1),
          child: Icon(Icons.add)),
    );
  }
}
