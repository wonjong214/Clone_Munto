import 'package:flutter/material.dart';
import 'package:loginscreen/constants/colors.dart';
import 'package:provider/provider.dart';
import '../../../providers/meeting_summary_provider.dart';
import '../../../widget/molecules/meeting/Socialring_Container.dart';
import '../../../widget/atoms/common_border_container.dart';

class SearchSocialringScreen extends StatefulWidget{
  @override
  State<SearchSocialringScreen> createState() => _SearchSocialringScreenState();
}

class _SearchSocialringScreenState extends State<SearchSocialringScreen> with AutomaticKeepAliveClientMixin{
  bool _isInit = true;
  bool _isSocialringLoading = false;

  @override
  bool get wantKeepAlive => true;

  @override
  void didChangeDependencies() {
    if (_isInit) {
      if(this.mounted){
        setState(() {
          _isSocialringLoading = true;
        });
      }

      Provider.of<MeetingSummaryProvider>(context).fetchAndSetSocialringItems().then((_){
        if(this.mounted){
          setState(() {
            _isSocialringLoading = false;
          });
        }
      });
    }
    _isInit = false;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    var meetingProvider = Provider.of<MeetingSummaryProvider>(context);
    return Container(
      color: backGroundColor,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
          child: Column(
            children: [
              Row(
                children: [
                  CommonBorderContainer(
                    backColor: Colors.white,
                      widget: Image.asset(
                        'assets/icons/filter.png',
                        width: 20,
                        height: 20,
                      ),
                      padding: EdgeInsets.only(left: 15, right: 15, top: 8, bottom: 8,),
                  ),
                  SizedBox(width: 10,),
                  CommonBorderContainer(
                    backColor: Colors.white,
                    widget: Text(
                      '날짜',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    padding: EdgeInsets.only(left: 15, right: 15, top: 8, bottom: 8,),
                  ),
                  SizedBox(width: 10,),
                  CommonBorderContainer(
                    backColor: Colors.white,                    widget: Text(
                      '지역',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    padding: EdgeInsets.only(left: 15, right: 15, top: 8, bottom: 8,),
                  ),
                  SizedBox(width: 10,),
                  CommonBorderContainer(
                    backColor: Colors.white,
                    widget: Text(
                      '나이',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    padding: EdgeInsets.only(left: 15, right: 15, top: 8, bottom: 8,),
                  ),
                  SizedBox(width: 10,),
                  CommonBorderContainer(
                    backColor: Colors.white,
                    widget: Text(
                      '정원',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    padding: EdgeInsets.only(left: 15, right: 15, top: 8, bottom: 8,),
                  )
                ],
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(width: 1, color: Colors.grey.shade700),
                    ),
                  ),
                  SizedBox(width: 5,),
                  Text(
                    '마감된 모임도 보기',
                    style: TextStyle(
                      color: Colors.grey.shade700,
                      fontSize: 14,
                    ),
                  ),
                  Spacer(),
                  Text(
                    '기본순',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(width: 5,),
                  Icon(Icons.keyboard_arrow_down_outlined,size: 20,)
                ],
              ),
              SizedBox(height: 20,),
              _isSocialringLoading ? const Center(child: CircularProgressIndicator(color: Colors.grey,))
                  :Column(
                children: [
                  for(int num=0; num<3; num++)
                    GestureDetector(
                        onTap: () {print('touch');},
                        child: SocialringContainer(
                          image: meetingProvider.socialring[num].image,
                          icon: meetingProvider.socialring[num].like ? Icon(Icons.favorite) : Icon(Icons.favorite_border),
                          onPressed: (){
                            meetingProvider.changeLike(meetingProvider.socialring[num]);
                          },
                          tag:  meetingProvider.socialring[num].tag,
                          title:  meetingProvider.socialring[num].title,
                          location:  meetingProvider.socialring[num].location,
                          date:  meetingProvider.socialring[num].date,
                          participants:  meetingProvider.socialring[num].participants,
                          total:  meetingProvider.socialring[num].total,
                        )
                    ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}