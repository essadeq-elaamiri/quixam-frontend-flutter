import 'package:quixam_frontend_flutter/entities/answer.dart';
import 'package:quixam_frontend_flutter/entities/commun_classes.dart';
import 'package:quixam_frontend_flutter/entities/question.dart';
import 'package:quixam_frontend_flutter/entities/quiz.dart';
import 'package:quixam_frontend_flutter/entities/student.dart';
import 'package:quixam_frontend_flutter/entities/teacher.dart';

class  MainRepository{
  

Teacher? login(String email, String password){}
Future<List<Quiz>>? getTeachersQuizzes(Id teacherId){
  return null;
}
void deleteTeachersQuiz(Id quizId){}
void addTeachersQuiz(Quiz quiz){}

//__________

Future<List<Question>>? getQuizsQuestions(Id quizId){
  return null;
}
void deleteQuizsQuestion(Id questionId){}
void addQuizsQuestion(Question question){}

//_____________

Future<List<Student>>? getQuizsStudents(Id quizId){
  return null;
}
void deleteQuizsStudent(Id studentId){}
void addQuizsStudent(Student student){}

//_____________

Future<List<Answer>>? getQuestionAnswers(Id questionId){
  return null;
}
void deleteQuestionsAnswer(Id answerId){}
void addQuestionsAnswer(Answer answer){}

  
}