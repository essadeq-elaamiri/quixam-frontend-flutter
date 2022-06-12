import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:quixam_frontend_flutter/entities/question.dart';
import 'package:quixam_frontend_flutter/entities/quiz.dart';

class AddAnswerForm extends StatelessWidget {
  final Color preferColor = Color.fromRGBO(249, 168, 38, 1);
  @override
  Widget build(BuildContext context) {
    String dropdownValue = 'Not correct';
    // access routing sent arguments
    final arguments = (ModalRoute.of(context)?.settings.arguments ??
        <String, dynamic>{}) as Map;
    Question question = arguments['question'];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        automaticallyImplyLeading: false,
        title: Text(
          'Add Answer to question',
          style: TextStyle(
            fontFamily: 'Poppins',
            color: Colors.white,
            fontSize: 22,
          ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 2,
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Align(
            alignment: AlignmentDirectional(0.15, 0.15),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(25, 0, 25, 0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                      child: Icon(
                        Icons.question_answer,
                        color: preferColor,
                        size: 155,
                      )),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 125),
                    child: Column(
                      children: [
                        Text(
                          "Add Answer",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 45,
                          ),
                        ),
                        Text(
                          "for '${question.content!}' question.",
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 25,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 22),
                    child: TextFormField(
                      controller: null,
                      autofocus: true,
                      obscureText: false,
                      decoration: InputDecoration(
                        hintText: 'Answer proposition',
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: preferColor,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(7),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: preferColor,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(7),
                        ),
                        suffixIcon: null,
                      ),
                      style: null,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 22),
                    child: DropdownButtonFormField<String>(
                      isExpanded: true,
                      hint: Text("Is correct ?"),
                      value: dropdownValue,
                      icon: const Icon(Icons.arrow_downward),
                      elevation: 16,
                      style: const TextStyle(color: Colors.orange),                      
                      decoration: InputDecoration(
                        hintText: 'Email',
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: preferColor,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(7),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: preferColor,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(7),
                        ),
                        suffixIcon: null,
                      ),
                      onChanged: (String? newValue) {
                        print(newValue);
                      },
                      items: <String>['Correct', 'Not correct']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.grey,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 50, vertical: 20),
                            textStyle: const TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold)),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text('Cancel'),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: preferColor,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 50, vertical: 20),
                            textStyle: const TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold)),
                        onPressed: () {
                          print('Button pressed ...');
                        },
                        child: Text('Continue'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
