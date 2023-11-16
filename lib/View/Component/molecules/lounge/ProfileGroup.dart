import 'package:flutter/material.dart';
import 'package:loginscreen/View/Component/atoms/ProfileImage_Container.dart';

class ProfileGroup extends StatelessWidget {
  List<AssetImage> _imagelist;

  ProfileGroup(List<AssetImage> imagelist)
      : _imagelist = List.empty(growable: true) {
    _imagelist = imagelist;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20),
      color: Colors.yellow,
      child: Stack(
        alignment: AlignmentDirectional.centerEnd,
        children: [
          CircleBorderImage_Container(
            AssetImage('assets/images/recommend_page/Exhibitions/jazz.jpeg'),
            width: 35,
            height: 35,
            border: Border.all(
                width: 3,
                color: Colors.white
            ),
          ),
          Positioned(
            right: 28,
            child: Container(
                width: 35.0,
                height: 35.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/recommend_page/Exhibitions/jazz.jpeg'),
                    fit: BoxFit.cover,
                  ),
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.white,
                    width: 3.0,
                  ),
                ),
              ),
          )
        ]
          /*List<Widget>.generate(_imagelist.length, (index){
            return Container(
              width: 20.0,
              height: 20.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: _imagelist[index],
                  fit: BoxFit.cover,
                ),
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.white,
                  width: 4.0,
                ),
              ),
            );
          }).toList()*/

      ),
    );
  }
}
