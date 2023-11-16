class Challenge_Model{
  String image;
  bool like;
  String tag;
  String title;
  String date;
  String duration;
  int time;
  int participants;
  int total;

  Challenge_Model({required this.image, required this.like, required this.tag, required this.title, required this.date, required this.duration, required this.time, required this.participants, required this.total});

  factory Challenge_Model.fromJson(Map<String, dynamic> json) {
    return Challenge_Model(
      image: json['image'],
      like: json['like'],
      tag: json['tag'],
      title: json['title'],
      date: json['date'],
      duration: json['duration'],
      time: json['time'],
      participants: json['participants'],
      total: json['total'],
    );
  }
}