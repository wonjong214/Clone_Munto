
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