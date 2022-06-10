import 'package:quixam_frontend_flutter/entities/commun_classes.dart';
import 'package:quixam_frontend_flutter/entities/quiz.dart';

class Student {
  Id? _iId;
  String? _firstname;
  String? _lastname;
  String? _email;
  String? _password;
  CreatedAt? _createdAt;
  CreatedAt? _updatedAt;
  int? _iV;
  List<Quiz>? _quizes;

  Student(
      {Id? iId,
      String? firstname,
      String? lastname,
      String? email,
      String? password,
      CreatedAt? createdAt,
      CreatedAt? updatedAt,
      int? iV,
      List<Quiz>? quizes}) {
    if (iId != null) {
      this._iId = iId;
    }
    if (firstname != null) {
      this._firstname = firstname;
    }
    if (lastname != null) {
      this._lastname = lastname;
    }
    if (email != null) {
      this._email = email;
    }
    if (password != null) {
      this._password = password;
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
    if (quizes != null) {
      this._quizes = quizes;
    }
  }

  Id? get iId => _iId;
  set iId(Id? iId) => _iId = iId;
  String? get firstname => _firstname;
  set firstname(String? firstname) => _firstname = firstname;
  String? get lastname => _lastname;
  set lastname(String? lastname) => _lastname = lastname;
  String? get email => _email;
  set email(String? email) => _email = email;
  String? get password => _password;
  set password(String? password) => _password = password;
  CreatedAt? get createdAt => _createdAt;
  set createdAt(CreatedAt? createdAt) => _createdAt = createdAt;
  CreatedAt? get updatedAt => _updatedAt;
  set updatedAt(CreatedAt? updatedAt) => _updatedAt = updatedAt;
  int? get iV => _iV;
  set iV(int? iV) => _iV = iV;
  List<Quiz>? get quizes => _quizes;
  set quizes(List<Quiz>? quizes) => _quizes = quizes;

  Student.fromJson(Map<String, dynamic> json) {
    _iId = json['_id'] != null ? new Id.fromJson(json['_id']) : null;
    _firstname = json['firstname'];
    _lastname = json['lastname'];
    _email = json['email'];
    _password = json['password'];
    _createdAt = json['createdAt'] != null
        ? new CreatedAt.fromJson(json['createdAt'])
        : null;
    _updatedAt = json['updatedAt'] != null
        ? new CreatedAt.fromJson(json['updatedAt'])
        : null;
    _iV = json['__v'];
    if (json['quizes'] != null) {
      _quizes = <Quiz>[];
      json['quizes'].forEach((v) {
        _quizes!.add(new Quiz.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this._iId != null) {
      data['_id'] = this._iId!.toJson();
    }
    data['firstname'] = this._firstname;
    data['lastname'] = this._lastname;
    data['email'] = this._email;
    data['password'] = this._password;
    if (this._createdAt != null) {
      data['createdAt'] = this._createdAt!.toJson();
    }
    if (this._updatedAt != null) {
      data['updatedAt'] = this._updatedAt!.toJson();
    }
    data['__v'] = this._iV;
    if (this._quizes != null) {
      data['quizes'] = this._quizes!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

