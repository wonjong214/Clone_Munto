import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../model/meeting/recommend/meeting_summary.dart';
import '../../../../providers/meeting_summary_provider.dart';
import '../../../atoms/more_button.dart';
import '../../../molecules/circularprogress_container.dart';
import '../../../molecules/meeting/Socialring_Container.dart';

class SocialringHicking extends StatefulWidget{
  List<MeetingSummary> hickingList;
  List<MeetingSummary>? socialringSummary;
  Function socialringChangeLike;
  bool isSocialringLoading;

  SocialringHicking({required this.socialringSummary, required this.socialringChangeLike, required this.isSocialringLoading})
      :hickingList = List.empty(growable: true);

  @override
  State<SocialringHicking> createState() => _SocialringHickingState();
}

class _SocialringHickingState extends State<SocialringHicking> {

  @override
  Widget build(BuildContext context) {
    widget.socialringSummary?.forEach((element) {
      if(element.tag.contains('등산'))
        widget.hickingList.add(element);
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
              widget.isSocialringLoading ?
              Column(
                children: [
                  for (int num = 0; num < 3; num++)
                    Padding(
                      padding: const EdgeInsets.only(bottom: 15),
                      child: CircularprogressContainer(
                        width: double.infinity,
                        height: 120,
                        backColor: Colors.white60,
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                ],
              ) :
              Column(
                children: [
                  for(int num=0; num<3; num++)
                    GestureDetector(
                        onTap: () {print('touch');},
                        child: SocialringContainer(
                          image: widget.hickingList[num].image,
                          icon:  widget.hickingList[num].like ? Icon(Icons.favorite) : Icon(Icons.favorite_border),
                          onPressed: (){
                            widget.socialringChangeLike( widget.hickingList[num]);
                          },
                          tag:   widget.hickingList[num].tag,
                          title:   widget.hickingList[num].title,
                          location:   widget.hickingList[num].location,
                          date:   widget.hickingList[num].date,
                          participants:   widget.hickingList[num].participants,
                          total:   widget.hickingList[num].total,
                        )
                    ),
                ],
              ),
              /*MoreButton(double.infinity)*/
            ],
          ),
        )
      ],
    );
  }
}