import 'package:loginscreen/Model/meeting/lounge/Card_Model.dart';

class Card_ViewModel{
  Card_Model _card_model;

  Card_ViewModel({required Card_Model card_model}):_card_model = card_model;

  Card_Model get card_model => _card_model;
  String get writerimage => _card_model.writerimage;
  String get writername => _card_model.writername;
  String get writedate => _card_model.writedate;
  List<String> get pageviewimage => _card_model.pageviewimage;
  String get meetingimage => _card_model.meetingimage;
  String get meetingtitle => _card_model.meetingtitle;
  String get meetingtype => _card_model.meetingtype;
  String get meetinglocation => _card_model.meetinglocation;
  String get meetingtime => _card_model.meetingtime;
  String get maplocation => _card_model.maplocation;
  String get mapdetaillocation => _card_model.mapdetaillocation;
  String get bodytext => _card_model.bodytext;
  List<String> get tag => _card_model.tag;
  bool get like => _card_model.like;
  int get likenum => _card_model.likenum;
  int get chatnum => _card_model.chatnum;
  String get chatimage => _card_model.chatimage;
  String get chatname => _card_model.chatname;
  String get chatbody => _card_model.chatbody;

  void set like(bool like){
    _card_model.like = like;
  }

  void set likenum(int likenum){
    _card_model.likenum = likenum;
  }

  void set chatnum(int chatnum){
    _card_model.chatnum = chatnum;
  }


}