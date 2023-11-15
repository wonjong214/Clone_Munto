import 'package:flutter/material.dart';
import 'package:loginscreen/ViewModel/Recommend_Page/MeetingProvider_ViewModel.dart';
import 'package:loginscreen/ViewModel/Recommend_Page/Meeting_ViewModel.dart';
import 'package:provider/provider.dart';
import '../../atoms/More_Button.dart';
import '../../molecules/meeting/Socialring_Container.dart';

class SocialringHicking extends StatelessWidget{
  List<Meeting_ViewModel> hickinglist;

  SocialringHicking():hickinglist = List.empty(growable: true);

  @override
  Widget build(BuildContext context) {
    var meeting_provider = Provider.of<Meeting_Provider>(context);
    meeting_provider.socialring.forEach((element) {
      if(element.tag.contains('관악산'))
        hickinglist.add(element);
    });
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
              for(int num=0; num<3; num++)
                GestureDetector(
                    onTap: () {print('touch');},
                    child: Socialring_Container(
                      image: hickinglist[num].image,
                      icon:  hickinglist[num].like ? Icon(Icons.favorite) : Icon(Icons.favorite_border),
                      onPressed: (){
                        meeting_provider.changelike( hickinglist[num]);
                      },
                      tag:   hickinglist[num].tag,
                      title:   hickinglist[num].title,
                      location:   hickinglist[num].location,
                      date:   hickinglist[num].date,
                      participants:   hickinglist[num].participants,
                      total:   hickinglist[num].total,
                    )
                ),
              More_Button(double.infinity)
            ],
          ),
        )
      ],
    );
  }
}