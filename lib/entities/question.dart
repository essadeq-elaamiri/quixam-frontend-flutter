class Question {
  String? _sId;
  String? _content;
  int? _score;
  int? _duration;
  String? _createdAt;
  String? _updatedAt;
  int? _iV;
  String? _quiz;
  List<String>? _answers;

  Question(
      {String? sId,
      String? content,
      int? score,
      int? duration,
      String? createdAt,
      String? updatedAt,
      int? iV,
      String? quiz,
      List<String>? answers}) {
    if (sId != null) {
      this._sId = sId;
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

  String? get sId => _sId;
  set sId(String? sId) => _sId = sId;
  String? get content => _content;
  set content(String? content) => _content = content;
  int? get score => _score;
  set score(int? score) => _score = score;
  int? get duration => _duration;
  set duration(int? duration) => _duration = duration;
  String? get createdAt => _createdAt;
  set createdAt(String? createdAt) => _createdAt = createdAt;
  String? get updatedAt => _updatedAt;
  set updatedAt(String? updatedAt) => _updatedAt = updatedAt;
  int? get iV => _iV;
  set iV(int? iV) => _iV = iV;
  String? get quiz => _quiz;
  set quiz(String? quiz) => _quiz = quiz;
  List<String>? get answers => _answers;
  set answers(List<String>? answers) => _answers = answers;

  Question.fromJson(Map<String, dynamic> json) {
    _sId = json['_id'];
    _content = json['content'];
    _score = json['score'];
    _duration = json['duration'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _iV = json['__v'];
    _quiz = json['quiz'];
    _answers = json['answers'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this._sId;
    data['content'] = this._content;
    data['score'] = this._score;
    data['duration'] = this._duration;
    data['createdAt'] = this._createdAt;
    data['updatedAt'] = this._updatedAt;
    data['__v'] = this._iV;
    data['quiz'] = this._quiz;
    data['answers'] = this._answers;
    return data;
  }
}
