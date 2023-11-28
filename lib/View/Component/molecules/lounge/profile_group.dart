import 'package:flutter/material.dart';
import 'package:loginscreen/View/Component/atoms/circle_border_image_container.dart';

class ProfileGroup extends StatelessWidget {
   double? interval = 23;
   double size = 30;
   int participants = 0;
  List<AssetImage> _imageList;

   List<AssetImage> imageList = [AssetImage('assets/images/recommend_page/Review/ski.jpeg'),
     AssetImage('assets/images/recommend_page/Exhibitions/coffee.jpeg'),
     AssetImage('assets/images/recommend_page/Review/board.jpeg'),
     AssetImage('assets/images/recommend_page/TasteSocialRing/carpenter.jpeg'),
     AssetImage('assets/images/recommend_page/TasteSocialRing/furniture.jpeg'),
     AssetImage('assets/images/recommend_page/TasteSocialRing/island.jpeg'),
     AssetImage('assets/images/socialring/colosseum.jpg'),
     AssetImage('assets/images/recommend_page/Exhibitions/cd.jpeg'),
     AssetImage('assets/images/socialring/backpacker.jpg'),
     AssetImage('assets/images/socialring/beer.jpg')];

  ProfileGroup(this.participants)
      : _imageList = List.empty(growable: true) {
    _imageList.addAll(List.generate(participants, (index) => imageList[index]));
  }

  @override
  Widget build(BuildContext context) {
    var container = Container(
      width: size + (interval! * (_imageList.length -1)),
      child: Stack(
        clipBehavior: Clip.hardEdge,
        alignment: AlignmentDirectional.centerEnd,
        children: List<Widget>.generate(_imageList.length, (index){
            if(index == 0)
              return CircleBorderImageContainer(
                _imageList[index],
                width: size,
                height: size,
                border: Border.all(
                    width: 3,
                    color: Colors.white
                ),
              );
            else
              return Positioned(
                right: interval! * index,
                child: CircleBorderImageContainer(
                  _imageList[index],
                  width: size,
                  height: size,
                  border: Border.all(
                      width: 3,
                      color: Colors.white
                  ),
                ),
              );
          }).toList()
      ),
    );
    return container;
  }
}
