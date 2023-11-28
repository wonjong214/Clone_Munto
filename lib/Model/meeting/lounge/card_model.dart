class CardModel{
  String writerImage;
  String writerName;
  String writeDate;
  List<String> pageviewImage;
  String meetingImage;
  String meetingTitle;
  String meetingType;
  String meetingLocation;
  String meetingTime;
  String mapLocation;
  String mapDetailLocation;
  String bodyText;
  List<String> tag;
  bool like;
  int likeNum;
  int chatNum;
  String chatImage;
  String chatName;
  String chatBody;

  CardModel({required this.writerImage, required this.writerName, required this.writeDate, required this.pageviewImage,
    required this.meetingImage, required this.meetingTitle, required this.meetingType, required this.meetingLocation,
    required this.meetingTime, required this.mapLocation, required this.mapDetailLocation, required this.bodyText,
    required this.tag, required this.like, required this.likeNum, required this.chatNum, required this.chatImage,
    required this.chatName, required this.chatBody});

  factory CardModel.fromJson(Map<String, dynamic> json) {
    return CardModel(
      writerImage: json['writerimage'],
      writerName: json['writername'],
      writeDate: json['writedate'],
      pageviewImage: (json['pageviewimage'] as List).map((e) => e as String).toList(),
      meetingImage: json['meetingimage'],
      meetingTitle: json['meetingtitle'],
      meetingType: json['meetingtype'],
      meetingLocation: json['meetinglocation'],
      meetingTime: json['meetingtime'],
      mapLocation: json['maplocation'],
      mapDetailLocation: json['mapdetaillocation'],
      bodyText: json['bodytext'],
      tag: (json['tag'] as List).map((e) => e as String).toList(),
      like: json['like'],
      likeNum: json['likenum'],
      chatNum: json['chatnum'],
      chatImage: json['chatimage'],
      chatName: json['chatname'],
      chatBody: json['chatbody'],
    );
  }

  Map<String, dynamic> toJson(){
    return {
      'writerimage':writerImage,
      'writername':writerName,
      'writedate':writeDate,
      'pageviewimage':pageviewImage,
      'meetingimage':meetingImage,
      'meetingtitle':meetingTitle,
      'meetingtype':meetingType,
      'meetinglocation':meetingLocation,
      'meetingtime':meetingTime,
      'maplocation':mapLocation,
      'mapdetaillocation':mapDetailLocation,
      'bodytext':bodyText,
      'tag':tag,
      'like':like,
      'likenum':likeNum,
      'chatnum':chatNum,
      'chatimage':chatImage,
      'chatname':chatName,
      'chatbody':chatBody,
    };
  }
}