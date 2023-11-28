import 'package:loginscreen/Model/meeting/club_news_model.dart';

class ClubNews_ViewModel{
  ClubNewsModel _clubNews_Model;

  ClubNews_ViewModel({required ClubNewsModel clubNews_Model}):_clubNews_Model = clubNews_Model;

  String get image => _clubNews_Model.image;
  String get clubexplantation => _clubNews_Model.clubExplantation;
  String get title => _clubNews_Model.title;
  bool get like => _clubNews_Model.like;
  int get likenum => _clubNews_Model.likeNum;

  void set like(bool like){
    _clubNews_Model.like = like;
  }
  void set likenum(int likenum){
    _clubNews_Model.likeNum = likenum;
  }
}