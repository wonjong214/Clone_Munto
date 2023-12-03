
class SocialringContestPoster{
  String image;
  String title;

  SocialringContestPoster({required this.image, required this.title});

  factory SocialringContestPoster.fromJson(Map<String, dynamic> json) {
    return SocialringContestPoster(
      image: json['image'],
      title: json['title'],
    );
  }

}

