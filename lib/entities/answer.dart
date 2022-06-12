class Answer {
  String? _sId;
  String? _content;
  bool? _isTrue;
  String? _createdAt;
  String? _updatedAt;
  int? _iV;
  String? _question;

  Answer(
      {String? sId,
      String? content,
      bool? isTrue,
      String? createdAt,
      String? updatedAt,
      int? iV,
      String? question}) {
    if (sId != null) {
      this._sId = sId;
    }
    if (content != null) {
      this._content = content;
    }
    if (isTrue != null) {
      this._isTrue = isTrue;
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
    if (question != null) {
      this._question = question;
    }
  }

  String? get sId => _sId;
  set sId(String? sId) => _sId = sId;
  String? get content => _content;
  set content(String? content) => _content = content;
  bool? get isTrue => _isTrue;
  set isTrue(bool? isTrue) => _isTrue = isTrue;
  String? get createdAt => _createdAt;
  set createdAt(String? createdAt) => _createdAt = createdAt;
  String? get updatedAt => _updatedAt;
  set updatedAt(String? updatedAt) => _updatedAt = updatedAt;
  int? get iV => _iV;
  set iV(int? iV) => _iV = iV;
  String? get question => _question;
  set question(String? question) => _question = question;

  Answer.fromJson(Map<String, dynamic> json) {
    _sId = json['_id'];
    _content = json['content'];
    _isTrue = json['isTrue'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _iV = json['__v'];
    _question = json['question'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this._sId;
    data['content'] = this._content;
    data['isTrue'] = this._isTrue;
    data['createdAt'] = this._createdAt;
    data['updatedAt'] = this._updatedAt;
    data['__v'] = this._iV;
    data['question'] = this._question;
    return data;
  }
}
