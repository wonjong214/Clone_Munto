
class Exhibitions{
  String _image;
  String _title;

  Exhibitions(this._image, this._title);

  String get image => _image;
  String get title => _title;

  void set image(String img){
    _image = img;
  }
  void set title(String title){
    _title = title;
  }

}

class TasteSocialRing{
  String _image;
  bool _like;
  List<String> _tag;
  String _title;
  String _location;
  String _date;
  int _participants;
  int _total;

  TasteSocialRing(this._image, this._like, this._tag, this._title, this._location, this._date, this._participants, this._total);

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

class Review{
  String _image;
  String _title;
  bool _like;
  int _likenum;

  Review(this._image, this._title, this._like, this._likenum);

  String get image => _image;
  String get title => _title;
  bool get like => _like;
  int get likenum => _likenum;

  void set image(String img){
    _image = img;
  }
  void set title(String title){
    _title = title;
  }
  void set like(bool like){
    _like = like;
  }
  void set likenum(int likenum){
    _likenum = likenum;
  }
}

class RecommandMember{
  String _profile;
  String _name;
  bool _following;
  String _writing;
  String _badge;
  String _keyword;

  String get profile => _profile;
  String get name => _name;
  bool get following => _following;
  String get writing => _writing;
  String get badge => _badge;
  String get keyword => _keyword;

  void set profile(String profile){
    _profile = profile;
  }
  void set name(String name){
    _name = profile;
  }
  void set following(bool following){
    _following = following;
  }
  void set writing(String writing){
    _writing = writing;
  }
  void set badge(String badge){
    _badge = profile;
  }
  void set keyword(String keyword){
    _keyword = keyword;
  }

  RecommandMember(this._profile, this._name, this._following, this._writing, this._badge, this._keyword);
}