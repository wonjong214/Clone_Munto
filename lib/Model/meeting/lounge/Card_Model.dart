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

  factory Card_Model.fromJson(Map<String, dynamic> json) {
    return Card_Model(
      writerimage: json['writerimage'],
      writername: json['writername'],
      writedate: json['writedate'],
      pageviewimage: json['pageviewimage'],
      meetingimage: json['meetingimage'],
      meetingtitle: json['meetingtitle'],
      meetingtype: json['meetingtype'],
      meetinglocation: json['meetinglocation'],
      meetingtime: json['meetingtime'],
      maplocation: json['maplocation'],
      mapdetaillocation: json['mapdetaillocation'],
      bodytext: json['bodytext'],
      tag: json['tag'],
      like: json['like'],
      likenum: json['likenum'],
      chatnum: json['chatnum'],
      chatimage: json['chatimage'],
      chatname: json['chatname'],
      chatbody: json['chatbody'],
    );
  }

  Map<String, dynamic> toJson(){
    return {
      'writerimage':writerimage,
      'writername':writername,
      'writedate':writedate,
      'pageviewimage':pageviewimage,
      'meetingimage':meetingimage,
      'meetingtitle':meetingtitle,
      'meetingtype':meetingtype,
      'meetinglocation':meetinglocation,
      'meetingtime':meetingtime,
      'maplocation':maplocation,
      'mapdetaillocation':mapdetaillocation,
      'bodytext':bodytext,
      'tag':tag,
      'like':like,
      'likenum':likenum,
      'chatnum':chatnum,
      'chatimage':chatimage,
      'chatname':chatname,
      'chatbody':chatbody,
    };
  }
}