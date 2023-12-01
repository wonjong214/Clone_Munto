class MemberReivew{
  String image;
  String title;
  bool like;
  int likeNum;

  MemberReivew({required this.image, required this.title, required this.like, required this.likeNum});

  factory MemberReivew.fromJson(Map<String, dynamic> json) {
    return MemberReivew(
      image: json['image'],
      title: json['title'],
      like: json['like'],
      likeNum: json['likeNum']
    );
  }
}