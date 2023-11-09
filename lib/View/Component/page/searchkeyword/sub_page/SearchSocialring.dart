import 'package:flutter/material.dart';
import 'package:loginscreen/View/Component/atoms/WhiteRoundTag_Container.dart';

class SearchSocialring extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
        child: Column(
          children: [
            Row(
              children: [
                WhiteRoundTag(
                    widget: Image.asset(
                      'assets/icons/filter.png',
                      width: 20,
                      height: 20,
                    ),
                    padding: EdgeInsets.only(left: 15, right: 15, top: 8, bottom: 8,),
                ),
                WhiteRoundTag(
                  widget: Image.asset(
                    'assets/icons/filter.png',
                    width: 20,
                    height: 20,
                  ),
                  padding: EdgeInsets.only(left: 15, right: 15, top: 8, bottom: 8,),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}