import 'package:flutter/material.dart';
import 'package:loginscreen/View/Component/atoms/Margin_SizedBox.dart';
import 'package:loginscreen/View/Component/molecules/meeting/ClubContainer_Container.dart';
import 'package:provider/provider.dart';
import '../../../../ViewModel/Recommend_Page/MeetingProvider_ViewModel.dart';
import '../../atoms/More_Button.dart';

class ClubNew extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<Meeting_Provider>(context);
    return Container(
        width: double.infinity,
        margin: EdgeInsets.only(left: 20, right: 20,bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '새로 열린 클럽',
              style: TextStyle(
                  fontSize: 22
              ),
            ),
            SizedBox(height: 8),
            for(int num=0; num<provider.club.length; num++)
              ClubContainer(
                width: double.infinity,
                image: provider.club[num].image,
                icon: (provider.club[num].like ? Icon(Icons.favorite) : Icon(Icons.favorite_border)),
                onPressed: (){
                  provider.changelike(provider.club[num]);
                },
                tag: provider.club[num].tag,
                title: provider.club[num].title,
                location: provider.club[num].location,
                date: provider.club[num].date,
                participants: provider.club[num].participants,
                total: provider.club[num].total,
              ),
            More_Button(double.infinity)
          ],
        )
    );
  }
}