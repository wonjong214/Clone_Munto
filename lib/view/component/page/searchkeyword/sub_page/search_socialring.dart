import 'package:flutter/material.dart';
import 'package:loginscreen/constants/colors.dart';
import 'package:loginscreen/view/component/atoms/common_border_container.dart';
import 'package:provider/provider.dart';
import '../../../../../view_model/meeting_provider_view_model.dart';
import '../../../molecules/meeting/Socialring_Container.dart';

class SearchSocialring extends StatefulWidget{
  @override
  State<SearchSocialring> createState() => _SearchSocialringState();
}

class _SearchSocialringState extends State<SearchSocialring> {
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
                    backColor: Colors.white,                    widget: Text(
                      '나이',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    padding: EdgeInsets.only(left: 15, right: 15, top: 8, bottom: 8,),
                  ),
                  SizedBox(width: 10,),
                  CommonBorderContainer(
                    backColor: Colors.white,                    widget: Text(
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
              _isSocialringLoading ? const Center(child: CircularProgressIndicator())
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