import 'package:loginscreen/DataSource/Card_DataSource.dart';

import '../ViewModel/Recommend_Page/Card_ViewModel.dart';

class Card_Repository{
  Card_DataSource _card_dataSource = Card_DataSource();

  List<Card_ViewModel> getCardList(){
    return _card_dataSource.getCardList();
  }
}