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