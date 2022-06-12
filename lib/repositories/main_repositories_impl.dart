import 'package:quixam_frontend_flutter/entities/student.dart';
import 'package:quixam_frontend_flutter/entities/quiz.dart';
import 'package:quixam_frontend_flutter/entities/question.dart';
import 'package:quixam_frontend_flutter/entities/commun_classes.dart';
import 'package:quixam_frontend_flutter/entities/answer.dart';
import 'package:quixam_frontend_flutter/entities/teacher.dart';
import 'package:quixam_frontend_flutter/repositories/main_repository.dart';
import 'package:http/http.dart' as http;

class MainRepositoryImp implements MainRepository{
  // lets concider that this is teachers login
  String logedinTeacher = """
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

  @override
  Teacher? login(String email, String password) {
    // TODO: implement login
    throw UnimplementedError();
  }

  @override
  void addQuestionsAnswer(Answer answer) {
    // TODO: implement addQuestionsAnswer
  }

  @override
  void addQuizsQuestion(Question question) {
    // TODO: implement addQuizsQuestion
  }

  @override
  void addQuizsStudent(Student student) {
    // TODO: implement addQuizsStudent
  }

  @override
  void addTeachersQuiz(Quiz quiz) {
    // TODO: implement addTeachersQuiz
  }

  @override
  void deleteQuestionsAnswer(Id answerId) {
    // TODO: implement deleteQuestionsAnswer
  }

  @override
  void deleteQuizsQuestion(Id questionId) {
    // TODO: implement deleteQuizsQuestion
  }

  @override
  void deleteQuizsStudent(Id studentId) {
    // TODO: implement deleteQuizsStudent
  }

  @override
  void deleteTeachersQuiz(Id quizId) {
    // TODO: implement deleteTeachersQuiz
  }

  @override
  Future<List<Answer>>? getQuestionAnswers(Id questionId) {
    // TODO: implement getQuestionAnswers
    throw UnimplementedError();
  }

  @override
  Future<List<Question>>? getQuizsQuestions(Id quizId) {
    // TODO: implement getQuizsQuestions
    throw UnimplementedError();
  }

  @override
  Future<List<Student>>? getQuizsStudents(Id quizId) {
    // TODO: implement getQuizsStudents
    throw UnimplementedError();
  }

  @override
  Future<List<Quiz>>? getTeachersQuizzes(Id teacherId) {
    // TODO: implement getTeachersQuizzes
    throw UnimplementedError();
  }
  
}