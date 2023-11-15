class Card_Model{
  String writerimage;
  String writername;
  String writedate;
  List<String> pageviewimage;
  String meetingimage;
  String meetingtitle;
  String meetingtype;
  String meetinglocation;
  String meetingtime;
  String maplocation;
  String mapdetaillocation;
  String bodytext;
  List<String> tag;
  bool like;
  int likenum;
  int chatnum;
  String chatimage;
  String chatname;
  String chatbody;

  Card_Model({required this.writerimage, required this.writername, required this.writedate, required this.pageviewimage,
    required this.meetingimage, required this.meetingtitle, required this.meetingtype, required this.meetinglocation,
    required this.meetingtime, required this.maplocation, required this.mapdetaillocation, required this.bodytext,
    required this.tag, required this.like, required this.likenum, required this.chatnum, required this.chatimage,
    required this.chatname, required this.chatbody});
}