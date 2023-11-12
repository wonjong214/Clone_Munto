class SocialRing_Model{
  String _image;
  bool _like;
  List<String> _tag;
  String _title;
  String _location;
  String _date;
  int _participants;
  int _total;

  SocialRing_Model(this._image, this._like, this._tag, this._title, this._location, this._date, this._participants, this._total);

  String get image => _image;
  bool get like => _like;
  List<String> get tag => _tag;
  String get title => _title;
  String get location => _location;
  String get date => _date;
  int get participants => _participants;
  int get total => _total;

  void set image(String img){
    _image = img;
  }
  void set like(bool like){
    _like = like;
  }
  void set tag(List<String> tag){
    _tag = tag;
  }
  void set title(String title){
    _title = title;
  }
  void set location(String location){
    _location = location;
  }
  void set date(String date){
    _date = date;
  }
  void set participants(int participants){
    _participants = participants;
  }
  void set total(int total){
    _total = total;
  }
}