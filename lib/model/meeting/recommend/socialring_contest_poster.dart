
class SocialringContestPoster{
  String _image;
  String _title;

  SocialringContestPoster(this._image, this._title);

  String get image => _image;
  String get title => _title;

  void set image(String img){
    _image = img;
  }
  void set title(String title){
    _title = title;
  }

}

