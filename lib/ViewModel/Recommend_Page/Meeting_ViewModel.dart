import 'package:loginscreen/Model/meeting/Meeting_Model.dart';

class Meeting_ViewModel{
  Meeting_Model _meeting_model;

  Meeting_ViewModel({required Meeting_Model meeting_model}):_meeting_model = meeting_model{}

  String get image => _meeting_model.image;
  bool get like => _meeting_model.like;
  List<String> get tag => _meeting_model.tag;
  String get title => _meeting_model.title;
  String get location => _meeting_model.location;
  String get date => _meeting_model.date;
  int get participants => _meeting_model.participants;
  int get total => _meeting_model.total;

  void set like(bool like){
    _meeting_model.like = like;
  }
}