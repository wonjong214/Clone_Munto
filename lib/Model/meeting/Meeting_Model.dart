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
}