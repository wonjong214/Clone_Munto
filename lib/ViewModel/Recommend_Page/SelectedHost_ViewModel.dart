import 'package:loginscreen/Model/meeting/SelectedHost_Model.dart';

class SelectedHost_ViewModel{
  SelectedHost_Model _selectedHost_Model;

  SelectedHost_ViewModel({required SelectedHost_Model selectedHost_Model}): _selectedHost_Model = selectedHost_Model;

  String get profileimage => _selectedHost_Model.profileimage;
  String get name => _selectedHost_Model.name;
  bool get follow => _selectedHost_Model.follow;
  String get selfintroduction => _selectedHost_Model.selfintroduction;
  List<String> get tag => _selectedHost_Model.tag;
  List<String> get image => _selectedHost_Model.image;

  void set follow(bool follow){
    _selectedHost_Model.follow = follow;
  }


}