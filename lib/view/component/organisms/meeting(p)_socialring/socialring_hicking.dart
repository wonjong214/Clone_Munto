import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../model/meeting/recommend/meeting_model.dart';
import '../../../../view_model/meeting_provider_view_model.dart';
import '../../atoms/more_button.dart';
import '../../molecules/meeting/Socialring_Container.dart';

class SocialringHicking extends StatefulWidget{
  List<MeetingModel> hickingList;

  SocialringHicking():hickingList = List.empty(growable: true);

  @override
  State<SocialringHicking> createState() => _SocialringHickingState();
}

class _SocialringHickingState extends State<SocialringHicking> {
  bool _isInit = true;
  bool _isSocialringLoading = false;

  @override
  void didChangeDependencies() {
    if (_isInit) {
      setState(() {
        _isSocialringLoading = true;
      });


      Provider.of<MeetingProvider>(context).fetchAndSetSocialringItems().then((_){
        setState(() {
          _isSocialringLoading = false;
        });
      });
    }
    _isInit = false;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    var meetingProvider = Provider.of<MeetingProvider>(context);
    meetingProvider.socialring.forEach((element) {
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
              _isSocialringLoading ? const Center(child: CircularProgressIndicator())
                  :Column(
                children: [
                  for(int num=0; num<3; num++)
                    GestureDetector(
                        onTap: () {print('touch');},
                        child: SocialringContainer(
                          image: widget.hickingList[num].image,
                          icon:  widget.hickingList[num].like ? Icon(Icons.favorite) : Icon(Icons.favorite_border),
                          onPressed: (){
                            meetingProvider.changeLike( widget.hickingList[num]);
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
              MoreButton(double.infinity)
            ],
          ),
        )
      ],
    );
  }
}