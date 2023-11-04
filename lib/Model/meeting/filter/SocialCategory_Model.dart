import 'package:flutter/material.dart';
enum Category {
  culture("문화·예술"),
  activity("액티비티"),
  food("푸드·드링크"),
  hoby("취미"),
  party("파티·소개팅"),
  travel("여행·동행"),
  study("자기계발"),
  friend("동네·친목"),
  investment("재테크"),
  language("외국어");


  final String korean;
  const Category(this.korean);
}
class SocialCategory_Model{
  Category? _category;
  Color? _cultureborder;
  Color? _culturein;
  Color? _activityborder;
  Color? _activityin;
  Color? _foodborder;
  Color? _foodin;
  Color? _hobyborder;
  Color? _hobyin;
  Color? _partyborder;
  Color? _partyin;
  Color? _travelborder;
  Color? _travelin;
  Color? _studyborder;
  Color? _studyin;
  Color? _friendborder;
  Color? _friendin;
  Color? _investmentborder;
  Color? _investmentin;
  Color? _languageborder;
  Color? _languagein;

  SocialCategory_Model(){
    _cultureborder = Colors.grey;
    _culturein = Colors.transparent;
    _activityborder = Colors.grey;
    _activityin = Colors.transparent;
    _foodborder = Colors.grey;
    _foodin = Colors.transparent;
    _hobyborder = Colors.grey;
    _hobyin = Colors.transparent;
    _partyborder = Colors.grey;
    _partyin = Colors.transparent;
    _travelborder = Colors.grey;
    _travelin = Colors.transparent;
    _studyborder = Colors.grey;
    _studyin = Colors.transparent;
    _friendborder = Colors.grey;
    _friendin = Colors.transparent;
    _investmentborder = Colors.grey;
    _investmentin = Colors.transparent;
    _languageborder = Colors.grey;
    _languagein = Colors.transparent;
  }

  Category? get category => this._category;
  Color? get cultureborder => this._cultureborder;
  Color? get culturein => this._culturein;
  Color? get activityborder => this._activityborder;
  Color? get activityin => this._activityin;
  Color? get foodborder => this._foodborder;
  Color? get foodin => this._foodin;
  Color? get hobyborder => this._hobyborder;
  Color? get hobyin => this._hobyin;
  Color? get partyborder => this._partyborder;
  Color? get partyin => this._partyin;
  Color? get travelborder => this._travelborder;
  Color? get travelin => this._travelin;
  Color? get studyborder => this._studyborder;
  Color? get studyin => this._studyin;
  Color? get friendborder => this._friendborder;
  Color? get friendin => this._friendin;
  Color? get investmentborder => this._investmentborder;
  Color? get investmentin => this._investmentin;
  Color? get languageborder => this._languageborder;
  Color? get languagein => this._languagein;


  void set cultureborder(Color? color){
    this._cultureborder = color;
  }

  void set culturein(Color? color){
    this._culturein = color;
  }

  void set activityborder(Color? color){
    this._activityborder = color;
  }

  void set activityin(Color? color){
    this._activityin = color;
  }

  void set foodborder(Color? color){
    this._foodborder = color;
  }

  void set foodin(Color? color){
    this._foodin = color;
  }

  void set hobyborder(Color? color){
    this._hobyborder = color;
  }

  void set hobyin(Color? color){
    this._hobyin = color;
  }

  void set partyborder(Color? color){
    this._partyborder = color;
  }

  void set partyin(Color? color){
    this._partyin = color;
  }

  void set travelborder(Color? color){
    this._travelborder = color;
  }

  void set travelin(Color? color){
    this._travelin = color;
  }

  void set studyborder(Color? color){
    this._studyborder = color;
  }

  void set studyin(Color? color){
    this._studyin = color;
  }

  void set friendborder(Color? color){
    this._friendborder = color;
  }

  void set friendin(Color? color){
    this._friendin = color;
  }

  void set investmentborder(Color? color){
    this._investmentborder = color;
  }

  void set investmentin(Color? color){
    this._investmentin = color;
  }

  void set languageborder(Color? color){
    this._languageborder = color;
  }

  void set languagein(Color? color){
    this._languagein = color;
  }

  void culture_touchevent(){
    if(category != Category.culture){
      _cultureborder = Colors.red;
      _culturein = Colors.red;
      _activityborder = Colors.grey;
      _activityin = Colors.transparent;
      _foodborder = Colors.grey;
      _foodin = Colors.transparent;
      _hobyborder = Colors.grey;
      _hobyin = Colors.transparent;
      _partyborder = Colors.grey;
      _partyin = Colors.transparent;
      _travelborder = Colors.grey;
      _travelin = Colors.transparent;
      _studyborder = Colors.grey;
      _studyin = Colors.transparent;
      _friendborder = Colors.grey;
      _friendin = Colors.transparent;
      _investmentborder = Colors.grey;
      _investmentin = Colors.transparent;
      _languageborder = Colors.grey;
      _languagein = Colors.transparent;
      _category = Category.culture;
    }
  }

  void activity_touchevent(){
    if(category != Category.activity){
      _cultureborder = Colors.grey;
      _culturein = Colors.transparent;
      _activityborder = Colors.red;
      _activityin = Colors.red;
      _foodborder = Colors.grey;
      _foodin = Colors.transparent;
      _hobyborder = Colors.grey;
      _hobyin = Colors.transparent;
      _partyborder = Colors.grey;
      _partyin = Colors.transparent;
      _travelborder = Colors.grey;
      _travelin = Colors.transparent;
      _studyborder = Colors.grey;
      _studyin = Colors.transparent;
      _friendborder = Colors.grey;
      _friendin = Colors.transparent;
      _investmentborder = Colors.grey;
      _investmentin = Colors.transparent;
      _languageborder = Colors.grey;
      _languagein = Colors.transparent;
      _category = Category.activity;
    }
  }

  void food_touchevent(){
    if(category != Category.food){
      _cultureborder = Colors.grey;
      _culturein = Colors.transparent;
      _activityborder = Colors.grey;
      _activityin = Colors.transparent;
      _foodborder = Colors.red;
      _foodin = Colors.red;
      _hobyborder = Colors.grey;
      _hobyin = Colors.transparent;
      _partyborder = Colors.grey;
      _partyin = Colors.transparent;
      _travelborder = Colors.grey;
      _travelin = Colors.transparent;
      _studyborder = Colors.grey;
      _studyin = Colors.transparent;
      _friendborder = Colors.grey;
      _friendin = Colors.transparent;
      _investmentborder = Colors.grey;
      _investmentin = Colors.transparent;
      _languageborder = Colors.grey;
      _languagein = Colors.transparent;
      _category = Category.food;
    }
  }

  void hoby_touchevent(){
    if(category != Category.hoby){
      _cultureborder = Colors.grey;
      _culturein = Colors.transparent;
      _activityborder = Colors.grey;
      _activityin = Colors.transparent;
      _foodborder = Colors.grey;
      _foodin = Colors.transparent;
      _hobyborder = Colors.red;
      _hobyin = Colors.red;
      _partyborder = Colors.grey;
      _partyin = Colors.transparent;
      _travelborder = Colors.grey;
      _travelin = Colors.transparent;
      _studyborder = Colors.grey;
      _studyin = Colors.transparent;
      _friendborder = Colors.grey;
      _friendin = Colors.transparent;
      _investmentborder = Colors.grey;
      _investmentin = Colors.transparent;
      _languageborder = Colors.grey;
      _languagein = Colors.transparent;
      _category = Category.hoby;
    }
  }

  void party_touchevent(){
    if(category != Category.party){
      _cultureborder = Colors.grey;
      _culturein = Colors.transparent;
      _activityborder = Colors.grey;
      _activityin = Colors.transparent;
      _foodborder = Colors.grey;
      _foodin = Colors.transparent;
      _hobyborder = Colors.grey;
      _hobyin = Colors.transparent;
      _partyborder = Colors.red;
      _partyin = Colors.red;
      _travelborder = Colors.grey;
      _travelin = Colors.transparent;
      _studyborder = Colors.grey;
      _studyin = Colors.transparent;
      _friendborder = Colors.grey;
      _friendin = Colors.transparent;
      _investmentborder = Colors.grey;
      _investmentin = Colors.transparent;
      _languageborder = Colors.grey;
      _languagein = Colors.transparent;
      _category = Category.party;
    }
  }

  void travel_touchevent(){
    if(category != Category.travel){
      _cultureborder = Colors.grey;
      _culturein = Colors.transparent;
      _activityborder = Colors.grey;
      _activityin = Colors.transparent;
      _foodborder = Colors.grey;
      _foodin = Colors.transparent;
      _hobyborder = Colors.grey;
      _hobyin = Colors.transparent;
      _partyborder = Colors.grey;
      _partyin = Colors.transparent;
      _travelborder = Colors.red;
      _travelin = Colors.red;
      _studyborder = Colors.grey;
      _studyin = Colors.transparent;
      _friendborder = Colors.grey;
      _friendin = Colors.transparent;
      _investmentborder = Colors.grey;
      _investmentin = Colors.transparent;
      _languageborder = Colors.grey;
      _languagein = Colors.transparent;
      _category = Category.travel;
    }
  }

  void study_touchevent(){
    if(category != Category.study){
      _cultureborder = Colors.grey;
      _culturein = Colors.transparent;
      _activityborder = Colors.grey;
      _activityin = Colors.transparent;
      _foodborder = Colors.grey;
      _foodin = Colors.transparent;
      _hobyborder = Colors.grey;
      _hobyin = Colors.transparent;
      _partyborder = Colors.grey;
      _partyin = Colors.transparent;
      _travelborder = Colors.grey;
      _travelin = Colors.transparent;
      _studyborder = Colors.red;
      _studyin = Colors.red;
      _friendborder = Colors.grey;
      _friendin = Colors.transparent;
      _investmentborder = Colors.grey;
      _investmentin = Colors.transparent;
      _languageborder = Colors.grey;
      _languagein = Colors.transparent;
      _category = Category.study;
    }
  }

  void friend_touchevent(){
    if(category != Category.friend){
      _cultureborder = Colors.grey;
      _culturein = Colors.transparent;
      _activityborder = Colors.grey;
      _activityin = Colors.transparent;
      _foodborder = Colors.grey;
      _foodin = Colors.transparent;
      _hobyborder = Colors.grey;
      _hobyin = Colors.transparent;
      _partyborder = Colors.grey;
      _partyin = Colors.transparent;
      _travelborder = Colors.grey;
      _travelin = Colors.transparent;
      _studyborder = Colors.grey;
      _studyin = Colors.transparent;
      _friendborder = Colors.red;
      _friendin = Colors.red;
      _investmentborder = Colors.grey;
      _investmentin = Colors.transparent;
      _languageborder = Colors.grey;
      _languagein = Colors.transparent;
      _category = Category.friend;
    }
  }

  void investment_touchevent(){
    if(category != Category.investment){
      _cultureborder = Colors.grey;
      _culturein = Colors.transparent;
      _activityborder = Colors.grey;
      _activityin = Colors.transparent;
      _foodborder = Colors.grey;
      _foodin = Colors.transparent;
      _hobyborder = Colors.grey;
      _hobyin = Colors.transparent;
      _partyborder = Colors.grey;
      _partyin = Colors.transparent;
      _travelborder = Colors.grey;
      _travelin = Colors.transparent;
      _studyborder = Colors.grey;
      _studyin = Colors.transparent;
      _friendborder = Colors.grey;
      _friendin = Colors.transparent;
      _investmentborder = Colors.red;
      _investmentin = Colors.red;
      _languageborder = Colors.grey;
      _languagein = Colors.transparent;
      _category = Category.investment;
    }
  }

  void language_touchevent(){
    if(category != Category.language){
      _cultureborder = Colors.grey;
      _culturein = Colors.transparent;
      _activityborder = Colors.grey;
      _activityin = Colors.transparent;
      _foodborder = Colors.grey;
      _foodin = Colors.transparent;
      _hobyborder = Colors.grey;
      _hobyin = Colors.transparent;
      _partyborder = Colors.grey;
      _partyin = Colors.transparent;
      _travelborder = Colors.grey;
      _travelin = Colors.transparent;
      _studyborder = Colors.grey;
      _studyin = Colors.transparent;
      _friendborder = Colors.grey;
      _friendin = Colors.transparent;
      _investmentborder = Colors.grey;
      _investmentin = Colors.transparent;
      _languageborder = Colors.red;
      _languagein = Colors.red;
      _category = Category.language;
    }
  }
}