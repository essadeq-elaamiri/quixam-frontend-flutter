import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:quixam_frontend_flutter/entities/quiz.dart';

class AddStudentForm extends StatelessWidget {
  final Color preferColor = Color.fromRGBO(0, 191, 166, 1);
  @override
  Widget build(BuildContext context) {
    // access routing sent arguments
    final arguments = (ModalRoute.of(context)?.settings.arguments ??
        <String, dynamic>{}) as Map;
    Quiz quiz = arguments['quiz'];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        automaticallyImplyLeading: false,
        title: Text(
          'Add Student to quiz',
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
                        Icons.person_add,
                        color: preferColor,
                        size: 155,
                      )),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 125),
                    child: Column(
                      children: [
                        Text(
                          "Add a student",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 45,
                          ),
                        ),
                        Text(
                          "to '${quiz.title!}' quiz.",
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
                        hintText: 'Last name',
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
                    child: TextFormField(
                      controller: null,
                      autofocus: true,
                      obscureText: false,
                      decoration: InputDecoration(
                        hintText: 'First name',
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
                    child: TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter email.';
                        }
                        if(value.length < 5 ){
                          return "Please enter a valid email (> 5 chars).";
                        }
                        return null;
                      },
                      controller: null,
                      autofocus: true,
                      obscureText: false,
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
                      style: null,
                      textAlign: TextAlign.center,
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
