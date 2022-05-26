import 'package:quixam_frontend_flutter/entities/answer.dart';

class Question {
  Id? _iId;
  String? _content;
  int? _score;
  int? _duration;
  CreatedAt? _createdAt;
  CreatedAt? _updatedAt;
  int? _iV;
  Id? _quiz;
  List<Answer>? _answers;

  Question(
      {Id? iId,
      String? content,
      int? score,
      int? duration,
      CreatedAt? createdAt,
      CreatedAt? updatedAt,
      int? iV,
      Id? quiz,
      List<Answer>? answers}) {
    if (iId != null) {
      this._iId = iId;
    }
    if (content != null) {
      this._content = content;
    }
    if (score != null) {
      this._score = score;
    }
    if (duration != null) {
      this._duration = duration;
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
    if (quiz != null) {
      this._quiz = quiz;
    }
    if (answers != null) {
      this._answers = answers;
    }
  }

  Id? get iId => _iId;
  set iId(Id? iId) => _iId = iId;
  String? get content => _content;
  set content(String? content) => _content = content;
  int? get score => _score;
  set score(int? score) => _score = score;
  int? get duration => _duration;
  set duration(int? duration) => _duration = duration;
  CreatedAt? get createdAt => _createdAt;
  set createdAt(CreatedAt? createdAt) => _createdAt = createdAt;
  CreatedAt? get updatedAt => _updatedAt;
  set updatedAt(CreatedAt? updatedAt) => _updatedAt = updatedAt;
  int? get iV => _iV;
  set iV(int? iV) => _iV = iV;
  Id? get quiz => _quiz;
  set quiz(Id? quiz) => _quiz = quiz;
  List<Answer>? get answers => _answers;
  set answers(List<Answer>? answers) => _answers = answers;

  Question.fromJson(Map<String, dynamic> json) {
    _iId = json['_id'] != null ? new Id.fromJson(json['_id']) : null;
    _content = json['content'];
    _score = json['score'];
    _duration = json['duration'];
    _createdAt = json['createdAt'] != null
        ? new CreatedAt.fromJson(json['createdAt'])
        : null;
    _updatedAt = json['updatedAt'] != null
        ? new CreatedAt.fromJson(json['updatedAt'])
        : null;
    _iV = json['__v'];
    _quiz = json['quiz'] != null ? new Id.fromJson(json['quiz']) : null;
    if (json['answers'] != null) {
      _answers = <Answer>[];
      json['answers'].forEach((v) {
        _answers!.add(new Answer.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this._iId != null) {
      data['_id'] = this._iId!.toJson();
    }
    data['content'] = this._content;
    data['score'] = this._score;
    data['duration'] = this._duration;
    if (this._createdAt != null) {
      data['createdAt'] = this._createdAt!.toJson();
    }
    if (this._updatedAt != null) {
      data['updatedAt'] = this._updatedAt!.toJson();
    }
    data['__v'] = this._iV;
    if (this._quiz != null) {
      data['quiz'] = this._quiz!.toJson();
    }
    if (this._answers != null) {
      data['answers'] = this._answers!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Id {
  String? _oid;

  Id({String? oid}) {
    if (oid != null) {
      this._oid = oid;
    }
  }

  String? get oid => _oid;
  set oid(String? oid) => _oid = oid;

  Id.fromJson(Map<String, dynamic> json) {
    _oid = json['$oid'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['$oid'] = this._oid;
    return data;
  }
}

class CreatedAt {
  String? _date;

  CreatedAt({String? date}) {
    if (date != null) {
      this._date = date;
    }
  }

  String? get date => _date;
  set date(String? date) => _date = date;

  CreatedAt.fromJson(Map<String, dynamic> json) {
    _date = json['$date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['$date'] = this._date;
    return data;
  }
}
