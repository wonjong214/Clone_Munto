class ClubNews{
  String image;
  String clubExplantation;
  String title;
  bool like;
  int likeNum;

  ClubNews({required this.image, required this.clubExplantation, required this.title, required this.like, required this.likeNum});

  factory ClubNews.fromJson(Map<String, dynamic> json) {
    return ClubNews(
      image: json['image'],
      clubExplantation: json['clubExplantation'],
      title: json['title'],
      like: json['like'],
      likeNum: json['likeNum'],
    );
  }

}