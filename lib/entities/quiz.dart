class Quiz {
  String? _sId;
  String? _title;
  String? _createdAt;
  String? _updatedAt;
  int? _iV;
  String? _teacher;
  List<String>? _students;
  List<String>? _questions;

  Quiz(
      {String? sId,
      String? title,
      String? createdAt,
      String? updatedAt,
      int? iV,
      String? teacher,
      List<String>? students,
      List<String>? questions}) {
    if (sId != null) {
      this._sId = sId;
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

  String? get sId => _sId;
  set sId(String? sId) => _sId = sId;
  String? get title => _title;
  set title(String? title) => _title = title;
  String? get createdAt => _createdAt;
  set createdAt(String? createdAt) => _createdAt = createdAt;
  String? get updatedAt => _updatedAt;
  set updatedAt(String? updatedAt) => _updatedAt = updatedAt;
  int? get iV => _iV;
  set iV(int? iV) => _iV = iV;
  String? get teacher => _teacher;
  set teacher(String? teacher) => _teacher = teacher;
  List<String>? get students => _students;
  set students(List<String>? students) => _students = students;
  List<String>? get questions => _questions;
  set questions(List<String>? questions) => _questions = questions;

  Quiz.fromJson(Map<String, dynamic> json) {
    _sId = json['_id'];
    _title = json['title'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _iV = json['__v'];
    _teacher = json['teacher'];
    _students = json['students'].cast<String>();
    _questions = json['questions'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this._sId;
    data['title'] = this._title;
    data['createdAt'] = this._createdAt;
    data['updatedAt'] = this._updatedAt;
    data['__v'] = this._iV;
    data['teacher'] = this._teacher;
    data['students'] = this._students;
    data['questions'] = this._questions;
    return data;
  }
}
