import 'package:loginscreen/Model/meeting/ClubNews_Model.dart';

class ClubNews_ViewModel{
  ClubNews_Model _clubNews_Model;

  ClubNews_ViewModel({required ClubNews_Model clubNews_Model}):_clubNews_Model = clubNews_Model;

  String get image => _clubNews_Model.image;
  String get clubexplantation => _clubNews_Model.clubexplantation;
  String get title => _clubNews_Model.title;
  bool get like => _clubNews_Model.like;
  int get likenum => _clubNews_Model.likenum;

  void set like(bool like){
    _clubNews_Model.like = like;
  }
  void set likenum(int likenum){
    _clubNews_Model.likenum = likenum;
  }
}