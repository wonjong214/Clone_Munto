import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import '../model/meeting/recommend/selected_host.dart';

class SelectedHostProvider extends ChangeNotifier{
  List<SelectedHost> _selectedhost;
  //bool isInit = true;

  SelectedHostProvider(): _selectedhost = List.empty(growable: true);

  List<SelectedHost> get selectedhost => _selectedhost;

  Future<void> fetchAndSelectedHostItems() async {
    try{
      final response = await rootBundle.loadString('assets/data/selected_host.json'); //http// 통신 코드
      final extractedData = json.decode(response) as Map<String, dynamic>;
      final List<SelectedHost> loadedSelectedHostItem = [];

      extractedData['items'].forEach((selectedHostItemData) {
        loadedSelectedHostItem.add(SelectedHost.fromJson(selectedHostItemData));
      });
      _selectedhost = loadedSelectedHostItem;
    }
    catch(e){
      print(e);
    }
    finally{
      //if(this.isInit)
      await Future.delayed(Duration(milliseconds: 5000));

      //this.isInit = false;
    }
  }

  void changeFollow(SelectedHost selectedhost){
    if(selectedhost.follow == true)
      selectedhost.follow = false;
    else
      selectedhost.follow = true;
    notifyListeners();
  }
}