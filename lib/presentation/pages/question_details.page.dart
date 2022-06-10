import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quixam_frontend_flutter/bloc/answersBloc/answers_bloc.dart';
import 'package:quixam_frontend_flutter/entities/answer.dart';
import 'package:quixam_frontend_flutter/entities/question.dart';
import 'package:quixam_frontend_flutter/presentation/widgets/answers_list_item.dart';

class QuestionDetails extends StatelessWidget {
  const QuestionDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // access routing sent arguments 
    final arguments = (ModalRoute.of(context)?.settings.arguments ?? <String, dynamic>{}) as Map;
    Question question = arguments['question'];
    //print(arguments);
    return Scaffold(
      appBar: AppBar(
          title: Text("Answers"),
          backgroundColor: Theme.of(context).appBarTheme.backgroundColor),
      body: BlocBuilder<AnswersBloc, AnswersState>(
        builder: (context, state) {
          return Padding(
            child: Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    // TODO: state quizes to listview
                    itemCount: 10,
                    itemBuilder: ((context, index) {
                    return AnswersListItem(answer: Answer(content: "Answer content", isTrue: false));
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
          },
          hoverColor: Colors.orange,
          child: Icon(Icons.plus_one)),
    );
  }
}