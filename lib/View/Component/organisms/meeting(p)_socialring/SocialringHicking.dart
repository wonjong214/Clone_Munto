import 'package:flutter/material.dart';
import 'package:loginscreen/ViewModel/Recommend_Page/MeetingProvider_ViewModel.dart';
import 'package:provider/provider.dart';
import '../../../../Model/meeting/meeting_model.dart';
import '../../atoms/more_button.dart';
import '../../molecules/meeting/Socialring_Container.dart';

class SocialringHicking extends StatefulWidget{
  List<MeetingModel> hickinglist;

  SocialringHicking():hickinglist = List.empty(growable: true);

  @override
  State<SocialringHicking> createState() => _SocialringHickingState();
}

class _SocialringHickingState extends State<SocialringHicking> {
  bool _isInit = true;
  bool _issocialringLoading = false;

  @override
  void didChangeDependencies() {
    if (_isInit) {
      setState(() {
        _issocialringLoading = true;
      });


      Provider.of<Meeting_Provider>(context).fetchAndSetSocialringItems().then((_){
        setState(() {
          _issocialringLoading = false;
        });
      });
    }
    _isInit = false;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    var meeting_provider = Provider.of<Meeting_Provider>(context);
    meeting_provider.socialring.forEach((element) {
      if(element.tag.contains('등산'))
        widget.hickinglist.add(element);
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
              _issocialringLoading ? const Center(child: CircularProgressIndicator())
                  :Column(
                children: [
                  for(int num=0; num<3; num++)
                    GestureDetector(
                        onTap: () {print('touch');},
                        child: SocialringContainer(
                          image: widget.hickinglist[num].image,
                          icon:  widget.hickinglist[num].like ? Icon(Icons.favorite) : Icon(Icons.favorite_border),
                          onPressed: (){
                            meeting_provider.changelike( widget.hickinglist[num]);
                          },
                          tag:   widget.hickinglist[num].tag,
                          title:   widget.hickinglist[num].title,
                          location:   widget.hickinglist[num].location,
                          date:   widget.hickinglist[num].date,
                          participants:   widget.hickinglist[num].participants,
                          total:   widget.hickinglist[num].total,
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