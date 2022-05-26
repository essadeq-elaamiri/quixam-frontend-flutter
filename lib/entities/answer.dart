class Answer {
  Id? _id;
  String? _content;
  bool? _isTrue;
  CreatedAt? _createdAt;
  CreatedAt? _updatedAt;
  int? _iV;
  Id? _question;

  Answer(
      {Id? id,
      String? content,
      bool? isTrue,
      CreatedAt? createdAt,
      CreatedAt? updatedAt,
      int? iV,
      Id? question}) {
    if (id != null) {
      this._id = id;
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

  Id? get id => _id;
  set id(Id? id) => _id = id;
  String? get content => _content;
  set content(String? content) => _content = content;
  bool? get isTrue => _isTrue;
  set isTrue(bool? isTrue) => _isTrue = isTrue;
  CreatedAt? get createdAt => _createdAt;
  set createdAt(CreatedAt? createdAt) => _createdAt = createdAt;
  CreatedAt? get updatedAt => _updatedAt;
  set updatedAt(CreatedAt? updatedAt) => _updatedAt = updatedAt;
  int? get iV => _iV;
  set iV(int? iV) => _iV = iV;
  Id? get question => _question;
  set question(Id? question) => _question = question;

  Answer.fromJson(Map<String, dynamic> json) {
    _id = json['id'] != null ? new Id.fromJson(json['id']) : null;
    _content = json['content'];
    _isTrue = json['isTrue'];
    _createdAt = json['createdAt'] != null
        ? new CreatedAt.fromJson(json['createdAt'])
        : null;
    _updatedAt = json['updatedAt'] != null
        ? new CreatedAt.fromJson(json['updatedAt'])
        : null;
    _iV = json['__v'];
    _question =
        json['question'] != null ? new Id.fromJson(json['question']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this._id != null) {
      data['id'] = this._id!.toJson();
    }
    data['content'] = this._content;
    data['isTrue'] = this._isTrue;
    if (this._createdAt != null) {
      data['createdAt'] = this._createdAt!.toJson();
    }
    if (this._updatedAt != null) {
      data['updatedAt'] = this._updatedAt!.toJson();
    }
    data['__v'] = this._iV;
    if (this._question != null) {
      data['question'] = this._question!.toJson();
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
