

import '../../Model/meeting/Challenge_Model.dart';

class Challenge_ViewModel{
  Challenge_Model _challenge_model;

  Challenge_ViewModel({required Challenge_Model challenge_model}):_challenge_model = challenge_model{}

  String get image => _challenge_model.image;
  bool get like => _challenge_model.like;
  String get tag => _challenge_model.tag;
  String get title => _challenge_model.title;
  String get date => _challenge_model.date;
  String get duration => _challenge_model.duration;
  int get time => _challenge_model.time;
  int get participants => _challenge_model.participants;
  int get total => _challenge_model.total;

  void set like(bool like){
    _challenge_model.like = like;
  }
}