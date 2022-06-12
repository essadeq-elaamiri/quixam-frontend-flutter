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
  final jsonTeacher = 
"""
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

  
  void addTeachersQuiz(Quiz quiz) {
    // TODO: implement addTeachersQuiz
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

  
  Future<List<Answer>>? getQuestionAnswers(String questionId) {
    // TODO: implement getQuestionAnswers
    throw UnimplementedError();
  }

  
  Future<List<Question>>? getQuizsQuestions(String quizId) {
    // TODO: implement getQuizsQuestions
    throw UnimplementedError();
  }

  
  Future<List<Student>>? getQuizsStudents(String quizId) {
    // TODO: implement getQuizsStudents
    throw UnimplementedError();
  }

  
  Future<List<Quiz>> getTeachersQuizzes({required String teacherId}) async {
    final response =
        await http.get(Uri.parse(baseUrl + "teachers/${teacherId}/quizes"));
    if (response.statusCode == 200) {
      // If the server did return a 201 CREATED response,
      // then parse the JSON.
      return jsonDecode(response.body);
    } else {
      // If the server did not return a 201 CREATED response,
      // then throw an exception.
      throw Exception('Failed to create album.');
    }
  }
}
