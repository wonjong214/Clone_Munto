class SelectedHost{
  String profileImage;
  String name;
  bool follow;
  String selfIntroduction;
  List<String> tag;
  List<String> image;

  SelectedHost({required this.profileImage, required this.name,required this.follow, required this.selfIntroduction,
  required this.tag, required this.image});

  factory SelectedHost.fromJson(Map<String, dynamic> json) {
    return SelectedHost(
      profileImage: json['profileImage'],
      name: json['name'],
      follow: json['follow'],
      selfIntroduction: json['selfIntroduction'],
      tag: (json['tag'] as List).map((e) => e as String).toList(),
      image: (json['image'] as List).map((e) => e as String).toList(),
      //pageviewImage: (json['pageviewimage'] as List).map((e) => e as String).toList(),
    );
  }

}