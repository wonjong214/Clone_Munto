class ReviewModel{
  String image;
  String title;
  bool like;
  int likeNum;

  ReviewModel({required this.image, required this.title, required this.like, required this.likeNum});

  factory ReviewModel.fromJson(Map<String, dynamic> json) {
    return ReviewModel(
      image: json['image'],
      title: json['title'],
      like: json['like'],
      likeNum: json['likeNum']
    );
  }
}