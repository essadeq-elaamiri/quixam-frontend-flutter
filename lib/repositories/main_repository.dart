import 'package:quixam_frontend_flutter/entities/answer.dart';
import 'package:quixam_frontend_flutter/entities/commun_classes.dart';
import 'package:quixam_frontend_flutter/entities/question.dart';
import 'package:quixam_frontend_flutter/entities/quiz.dart';
import 'package:quixam_frontend_flutter/entities/student.dart';
import 'package:quixam_frontend_flutter/entities/teacher.dart';

class  MainRepository{
  

Teacher? login(String email, String password){}
Future<List<Quiz>>? getTeachersQuizzes(String teacherId){
  return null;
}
void deleteTeachersQuiz(String quizId){}
void addTeachersQuiz(Quiz quiz){}

//__________

Future<List<Question>>? getQuizsQuestions(String quizId){
  return null;
}
void deleteQuizsQuestion(String questionId){}
void addQuizsQuestion(Question question){}

//_____________

Future<List<Student>>? getQuizsStudents(String quizId){
  return null;
}
void deleteQuizsStudent(String studentId){}
void addQuizsStudent(Student student){}

//_____________

Future<List<Answer>>? getQuestionAnswers(String questionId){
  return null;
}
void deleteQuestionsAnswer(String answerId){}
void addQuestionsAnswer(Answer answer){}

  
}