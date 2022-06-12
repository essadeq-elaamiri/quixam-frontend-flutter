import 'dart:convert';

import 'package:quixam_frontend_flutter/entities/student.dart';
import 'package:quixam_frontend_flutter/entities/quiz.dart';
import 'package:quixam_frontend_flutter/entities/question.dart';
import 'package:quixam_frontend_flutter/entities/commun_classes.dart';
import 'package:quixam_frontend_flutter/entities/answer.dart';
import 'package:quixam_frontend_flutter/entities/teacher.dart';
import 'package:quixam_frontend_flutter/repositories/main_repository.dart';
import 'package:http/http.dart' as http;

class MainRepositoryImp {
  final String baseUrl = "http://localhost:8000/api/";

  // lets concider that this is teachers login
  final jsonTeacher = """
{
            "_id": "62718bf3fc6495a9942d2a59",
            "firstname": "sslma",
            "lastname": "test",
            "email": "loubna@gmail.com",
            "password": "password",
            "createdAt": "2022-05-03T20:09:23.269Z",
            "updatedAt": "2022-05-04T14:34:00.982Z",
            "__v": 0,
            "quizes": [
                "62725c788e92aab06719995d"
            ]
        }
""";

  Teacher? login(String email, String password) {
    Teacher teacher = Teacher.fromJson(json.decode(jsonTeacher));
    //print(json.decode(jsonTeacher));
    return teacher; //Teacher(iId: String(oid: "62718bf3fc6495a9942d2a59"));
  }

  void addQuestionsAnswer(Answer answer) {
    // TODO: implement addQuestionsAnswer
    http
        .post(Uri.parse(baseUrl + "answers/"),
            headers: <String, String>{
              'Content-Type': 'application/json; charset=UTF-8',
            },
            body: answer.toJson())
        .then((value) => {print(value)});
  }

  void addQuizsQuestion(Question question) {
    // TODO: implement addQuizsQuestion
  }

  void addQuizsStudent(Student student) {
    // TODO: implement addQuizsStudent
  }

  void addTeachersQuiz(String teacherId, Quiz quiz) async {
    // posting quiz
    final response = http.post(
      Uri.parse(baseUrl + 'quizes/'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: quiz.toJson(),
    ).then((value) async {
       await http.post(
      Uri.parse(baseUrl + "teachers/${teacherId}/quiz/"),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode({"quizID": "${Quiz.fromJson(value as Map<String, dynamic>).sId}"}),
    );
    });
  }

  void deleteQuestionsAnswer(String answerId) {
    // TODO: implement deleteQuestionsAnswer
  }

  void deleteQuizsQuestion(String questionId) {
    // TODO: implement deleteQuizsQuestion
  }

  void deleteQuizsStudent(String studentId) {
    // TODO: implement deleteQuizsStudent
  }

  void deleteTeachersQuiz(String quizId) {
    // TODO: implement deleteTeachersQuiz
  }

  Future<List<Question>>? getQuizsQuestions(String quizId) async {
    final response =
        await http.get(Uri.parse(baseUrl + "quizes/${quizId}/questions"));
    if (response.statusCode == 200) {
      // If the server did return a 201 CREATED response,
      // then parse the JSON.
      Iterable iterable = json.decode(response.body);
      List<Question> questions = List<Question>.from(
          iterable.map((model) => Question.fromJson(model)));
      return await questions;
    } else {
      // If the server did not return a 201 CREATED response,
      // then throw an exception.
      throw Exception('Failed to create album.');
    }
  }

  Future<List<Answer>>? getQuestionsAnswers(String questionId) async {
    final response =
        await http.get(Uri.parse(baseUrl + "questions/${questionId}/answers"));
    if (response.statusCode == 200) {
      // If the server did return a 201 CREATED response,
      // then parse the JSON.
      Iterable iterable = json.decode(response.body);
      List<Answer> answers =
          List<Answer>.from(iterable.map((model) => Answer.fromJson(model)));
      return await answers;
    } else {
      // If the server did not return a 201 CREATED response,
      // then throw an exception.
      throw Exception('Failed to create album.');
    }
  }

  Future<List<Quiz>> getTeachersQuizzes({required String teacherId}) async {
    final response =
        await http.get(Uri.parse(baseUrl + "teachers/${teacherId}/quizes"));
    print(baseUrl + "teachers/${teacherId}/quizes");
    if (response.statusCode == 200) {
      // If the server did return a 201 CREATED response,
      // then parse the JSON.
      Iterable iterable = json.decode(response.body);
      List<Quiz> quizzes =
          List<Quiz>.from(iterable.map((model) => Quiz.fromJson(model)));
      return await quizzes;
    } else {
      // If the server did not return a 201 CREATED response,
      // then throw an exception.
      throw Exception('Failed to create album.');
    }
  }

  Future<List<Student>> getQuizsStudents({required String quizId}) async {
    final response =
        await http.get(Uri.parse(baseUrl + "quizes/${quizId}/students"));
    //print(baseUrl + "teachers/${studentId}/quizes");
    if (response.statusCode == 200) {
      // If the server did return a 201 CREATED response,
      // then parse the JSON.
      Iterable iterable = json.decode(response.body);
      List<Student> students =
          List<Student>.from(iterable.map((model) => Student.fromJson(model)));
      return await students;
    } else {
      // If the server did not return a 201 CREATED response,
      // then throw an exception.
      throw Exception('Failed to create album.');
    }
  }
}
