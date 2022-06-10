import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quixam_frontend_flutter/bloc/quizesBloc/quizes_bloc.dart';
import 'package:quixam_frontend_flutter/entities/commun_classes.dart';
import 'package:quixam_frontend_flutter/entities/quiz.dart';
import 'package:quixam_frontend_flutter/presentation/widgets/quiz_list_item.dart';

class QuizesList extends StatefulWidget {
  const QuizesList({Key? key}) : super(key: key);

  @override
  State<QuizesList> createState() => _QuizesListState();
}

class _QuizesListState extends State<QuizesList> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Quizes list'),
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
                    return QuizesListItem(quiz: Quiz(title: "hello", createdAt: CreatedAt(date: "2014-05-19")),);
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
