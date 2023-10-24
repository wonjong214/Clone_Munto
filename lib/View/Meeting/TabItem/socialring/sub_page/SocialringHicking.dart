import 'package:flutter/material.dart';
import 'package:loginscreen/Component/atoms/Common_Container.dart';
import 'package:loginscreen/Component/molecules/GroupImage_Container.dart';

class SocialringHicking extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 180,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('assets/images/socialring/backpacker.jpg')
              )
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20,),
              Text(
                '등린이부터 산신령까지\n다같이 가볍게 즐기는 등산',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 22
                ),
              ),
              SizedBox(height: 50,),
              Common_Container(
                  Row(
                    children: [
                      GroupImage(
                          IconButton(
                              icon: (Icon(Icons.favorite)),
                              color: Colors.white,
                              onPressed: () {}
                          ),
                          'assets/images/socialring/backpacker.jpg'
                      )
                    ],
               )
              )
            ],
          ),
        )
      ],
    );
  }
}