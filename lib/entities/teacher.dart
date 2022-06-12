class Teacher {
  String? _sId;
  String? _firstname;
  String? _lastname;
  String? _email;
  String? _password;
  String? _createdAt;
  String? _updatedAt;
  int? _iV;
  List<String>? _quizes;

  Teacher(
      {String? sId,
      String? firstname,
      String? lastname,
      String? email,
      String? password,
      String? createdAt,
      String? updatedAt,
      int? iV,
      List<String>? quizes}) {
    if (sId != null) {
      this._sId = sId;
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

  String? get sId => _sId;
  set sId(String? sId) => _sId = sId;
  String? get firstname => _firstname;
  set firstname(String? firstname) => _firstname = firstname;
  String? get lastname => _lastname;
  set lastname(String? lastname) => _lastname = lastname;
  String? get email => _email;
  set email(String? email) => _email = email;
  String? get password => _password;
  set password(String? password) => _password = password;
  String? get createdAt => _createdAt;
  set createdAt(String? createdAt) => _createdAt = createdAt;
  String? get updatedAt => _updatedAt;
  set updatedAt(String? updatedAt) => _updatedAt = updatedAt;
  int? get iV => _iV;
  set iV(int? iV) => _iV = iV;
  List<String>? get quizes => _quizes;
  set quizes(List<String>? quizes) => _quizes = quizes;

  Teacher.fromJson(Map<String, dynamic> json) {
    _sId = json['_id'];
    _firstname = json['firstname'];
    _lastname = json['lastname'];
    _email = json['email'];
    _password = json['password'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _iV = json['__v'];
    _quizes = json['quizes'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this._sId;
    data['firstname'] = this._firstname;
    data['lastname'] = this._lastname;
    data['email'] = this._email;
    data['password'] = this._password;
    data['createdAt'] = this._createdAt;
    data['updatedAt'] = this._updatedAt;
    data['__v'] = this._iV;
    data['quizes'] = this._quizes;
    return data;
  }
}
