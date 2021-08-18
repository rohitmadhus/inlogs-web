class Blog {
  String _id;
  DateTime _date;
  String _title;
  String _content;
  String _imgLink;
  String _refLink;
  int _bgColor;

  String get getId => _id;
  DateTime get getDate => _date;
  String get getTitle => _title;
  String get getContent => _content;
  String get getImageLink => _imgLink;
  String get getRefLink => _refLink;
  int get getBgColor => _bgColor;

  Blog(this._id, this._date, this._title, this._content, this._imgLink,
      this._refLink, this._bgColor);

  static Blog fromJSON(Map blog) {
    return new Blog(blog["id"], DateTime.parse(blog["date"]), blog["title"],
        blog["content"], blog["image"], blog["ref"], blog["bg"]);
  }
}
