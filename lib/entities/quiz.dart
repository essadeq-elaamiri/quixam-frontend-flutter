import 'package:quixam_frontend_flutter/entities/commun_classes.dart';
import 'package:quixam_frontend_flutter/entities/question.dart';
import 'package:quixam_frontend_flutter/entities/student.dart';

class Quiz {
  Id? _iId;
  String? _title;
  CreatedAt? _createdAt;
  CreatedAt? _updatedAt;
  int? _iV;
  Id? _teacher;
  List<Student>? _students;
  List<Question>? _questions;

  Quiz(
      {Id? iId,
      String? title,
      CreatedAt? createdAt,
      CreatedAt? updatedAt,
      int? iV,
      Id? teacher,
      List<Student>? students,
      List<Question>? questions}) {
    if (iId != null) {
      this._iId = iId;
    }
    if (title != null) {
      this._title = title;
    }
    if (createdAt != null) {
      this._createdAt = createdAt;
    }
    if (updatedAt != null) {
      this._updatedAt = updatedAt;
    }
    if (iV != null) {
      this._iV = iV;
    }
    if (teacher != null) {
      this._teacher = teacher;
    }
    if (students != null) {
      this._students = students;
    }
    if (questions != null) {
      this._questions = questions;
    }
  }

  Id? get iId => _iId;
  set iId(Id? iId) => _iId = iId;
  String? get title => _title;
  set title(String? title) => _title = title;
  CreatedAt? get createdAt => _createdAt;
  set createdAt(CreatedAt? createdAt) => _createdAt = createdAt;
  CreatedAt? get updatedAt => _updatedAt;
  set updatedAt(CreatedAt? updatedAt) => _updatedAt = updatedAt;
  int? get iV => _iV;
  set iV(int? iV) => _iV = iV;
  Id? get teacher => _teacher;
  set teacher(Id? teacher) => _teacher = teacher;
  List<Student>? get students => _students;
  set students(List<Student>? students) => _students = students;
  List<Question>? get questions => _questions;
  set questions(List<Question>? questions) => _questions = questions;

  Quiz.fromJson(Map<String, dynamic> json) {
    _iId = json['_id'] != null ? new Id.fromJson(json['_id']) : null;
    _title = json['title'];
    _createdAt = json['createdAt'] != null
        ? new CreatedAt.fromJson(json['createdAt'])
        : null;
    _updatedAt = json['updatedAt'] != null
        ? new CreatedAt.fromJson(json['updatedAt'])
        : null;
    _iV = json['__v'];
    _teacher =
        json['teacher'] != null ? new Id.fromJson(json['teacher']) : null;
    if (json['students'] != null) {
      _students = <Student>[];
      json['students'].forEach((v) {
        _students!.add(new Student.fromJson(v));
      });
    }
    if (json['questions'] != null) {
      _questions = <Question>[];
      json['questions'].forEach((v) {
        _questions!.add(new Question.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this._iId != null) {
      data['_id'] = this._iId!.toJson();
    }
    data['title'] = this._title;
    if (this._createdAt != null) {
      data['createdAt'] = this._createdAt!.toJson();
    }
    if (this._updatedAt != null) {
      data['updatedAt'] = this._updatedAt!.toJson();
    }
    data['__v'] = this._iV;
    if (this._teacher != null) {
      data['teacher'] = this._teacher!.toJson();
    }
    if (this._students != null) {
      data['students'] = this._students!.map((v) => v.toJson()).toList();
    }
    if (this._questions != null) {
      data['questions'] = this._questions!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}


