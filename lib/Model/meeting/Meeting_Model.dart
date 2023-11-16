class Meeting_Model{
  String image;
  bool like;
  List<String> tag;
  String title;
  String location;
  String date;
  int participants;
  int total;

  Meeting_Model({required this.image, required this.like, required this.tag, required this.title, required this.location, required this.date, required this.participants, required this.total});

  factory Meeting_Model.fromJson(Map<String, dynamic> json) {
    return Meeting_Model(
      image: json['image'],
      like: json['like'],
      tag: json['tag'],
      title: json['title'],
      location: json['location'],
      date: json['date'],
      participants: json['participants'],
      total: json['total'],
    );
  }
}