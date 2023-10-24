import 'package:flutter/material.dart';
import 'package:loginscreen/Component/atoms/Common_Container.dart';

class OpenMeetingView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      margin: EdgeInsets.only(left: 20, right: 20),
      child: Common_Container(
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Spacer(flex:1),
                  Text(
                    '모임 열기',
                    style: TextStyle(
                        fontSize: 22,
                        color: Colors.red
                    ),
                  ),
                  SizedBox(height: 20,),
                  Text(
                    '나와 꼭 맞는 취향을 가진 사람들과\n만날 기회 직접 만들어볼까요?',
                    maxLines: 2,
                    style: TextStyle(
                        fontSize: 16,
                        height: 1.2
                    ),
                  ),
                  Spacer(flex:1),
                ],
              ),
              SizedBox(width: 50,),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.red
                ),
                child: Icon(Icons.arrow_forward_ios, color: Colors.white, size: 25,)
              )
            ],
          )
      ),
    );
  }
}