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
                Card(
                  child: QuizDetailsInfo(quiz: quiz),
                ),
                Expanded(
                  child: ListView.builder(
                      // TODO: state quizes to listview
                      itemCount: 10,
                      itemBuilder: ((context, index) {
                        return QuestionsListItem(
                            question: Question(
                                iId: Id(oid: '14225'),
                                score: 154,
                                content: "Content ?"));
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
          child: Icon(Icons.add)),
    );
  }
}
