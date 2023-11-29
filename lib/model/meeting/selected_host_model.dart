class SelectedHostModel{
  String profileImage;
  String name;
  bool follow;
  String selfIntroduction;
  List<String> tag;
  List<String> image;

  SelectedHostModel({required this.profileImage, required this.name,required this.follow, required this.selfIntroduction,
  required this.tag, required this.image});

  factory SelectedHostModel.fromJson(Map<String, dynamic> json) {
    return SelectedHostModel(
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