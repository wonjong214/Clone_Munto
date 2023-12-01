class MeetingSummary{
  String image;
  bool like;
  List<String> tag;
  String title;
  String location;
  String date;
  int participants;
  int total;

  MeetingSummary({required this.image, required this.like, required this.tag, required this.title, required this.location, required this.date, required this.participants, required this.total});

  factory MeetingSummary.fromJson(Map<String, dynamic> json) {
    return MeetingSummary(
      image: json['image'],
      like: json['like'],
      tag: (json['tag'] as List).map((e) => e as String).toList(),
      title: json['title'],
      location: json['location'],
      date: json['date'],
      participants: json['participants'],
      total: json['total'],
    );
  }

  Map<String, dynamic> toJson(){
    return {
      'image':image,
      'like':like,
      'tag':tag,
      'title':title,
      'location':location,
      'date':date,
      'participants':participants,
      'total':total,
    };
  }
}