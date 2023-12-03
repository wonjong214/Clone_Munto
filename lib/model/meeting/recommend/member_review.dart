class MemberReview{
  String image;
  String title;
  bool like;
  int likeNum;

  MemberReview({required this.image, required this.title, required this.like, required this.likeNum});

  factory MemberReview.fromJson(Map<String, dynamic> json) {
    return MemberReview(
      image: json['image'],
      title: json['title'],
      like: json['like'],
      likeNum: json['likeNum']
    );
  }
}