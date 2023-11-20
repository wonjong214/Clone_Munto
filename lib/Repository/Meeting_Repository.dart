import 'package:loginscreen/DataSource/Meeting_DataSource.dart';

import '../ViewModel/Recommend_Page/Meeting_ViewModel.dart';

class Meeting_Repository{
  final Meeting_DataSource _meeting_dataSource = Meeting_DataSource();

  List<Meeting_ViewModel> getSocialringList() {
    return _meeting_dataSource.getSocialringList();
  }

  List<Meeting_ViewModel> getClubList() {
    return _meeting_dataSource.getClubList();
  }

}