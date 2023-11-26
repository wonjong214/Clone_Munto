import 'package:flutter/material.dart';
import 'package:loginscreen/Constants/colors.dart';
import 'package:loginscreen/View/Component/atoms/CommonBorderContainer.dart';
import 'package:provider/provider.dart';
import '../../../../../ViewModel/Recommend_Page/MeetingProvider_ViewModel.dart';
import '../../../molecules/meeting/Socialring_Container.dart';

class SearchSocialring extends StatefulWidget{
  @override
  State<SearchSocialring> createState() => _SearchSocialringState();
}

class _SearchSocialringState extends State<SearchSocialring> {
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
    return Container(
      color: background_color,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
          child: Column(
            children: [
              Row(
                children: [
                  CommonBorderContainer(
                    backcolor: Colors.white,
                      widget: Image.asset(
                        'assets/icons/filter.png',
                        width: 20,
                        height: 20,
                      ),
                      padding: EdgeInsets.only(left: 15, right: 15, top: 8, bottom: 8,),
                  ),
                  SizedBox(width: 10,),
                  CommonBorderContainer(
                    backcolor: Colors.white,
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
                    backcolor: Colors.white,                    widget: Text(
                      '지역',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    padding: EdgeInsets.only(left: 15, right: 15, top: 8, bottom: 8,),
                  ),
                  SizedBox(width: 10,),
                  CommonBorderContainer(
                    backcolor: Colors.white,                    widget: Text(
                      '나이',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    padding: EdgeInsets.only(left: 15, right: 15, top: 8, bottom: 8,),
                  ),
                  SizedBox(width: 10,),
                  CommonBorderContainer(
                    backcolor: Colors.white,                    widget: Text(
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
              _issocialringLoading ? const Center(child: CircularProgressIndicator())
                  :Column(
                children: [
                  for(int num=0; num<3; num++)
                    GestureDetector(
                        onTap: () {print('touch');},
                        child: Socialring_Container(
                          image: meeting_provider.socialring[num].image,
                          icon: meeting_provider.socialring[num].like ? Icon(Icons.favorite) : Icon(Icons.favorite_border),
                          onPressed: (){
                            meeting_provider.changelike(meeting_provider.socialring[num]);
                          },
                          tag:  meeting_provider.socialring[num].tag,
                          title:  meeting_provider.socialring[num].title,
                          location:  meeting_provider.socialring[num].location,
                          date:  meeting_provider.socialring[num].date,
                          participants:  meeting_provider.socialring[num].participants,
                          total:  meeting_provider.socialring[num].total,
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