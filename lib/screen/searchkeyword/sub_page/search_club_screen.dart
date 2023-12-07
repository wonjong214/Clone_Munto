import 'package:flutter/material.dart';
import 'package:loginscreen/constants/colors.dart';
import 'package:provider/provider.dart';
import '../../../providers/meeting_summary_provider.dart';
import '../../../widget/atoms/common_border_container.dart';
import '../../../widget/molecules/meeting/club_container.dart';


class SearchClubScreen extends StatefulWidget {
  @override
  State<SearchClubScreen> createState() => _SearchClubScreenState();
}

class _SearchClubScreenState extends State<SearchClubScreen> with AutomaticKeepAliveClientMixin{
  bool _isInit = true;
  bool _isLoading = false;

  @override
  bool get wantKeepAlive => true;

  @override
  void didChangeDependencies() {
    if (_isInit) {
      if(this.mounted){
        setState(() {
          _isLoading = true;
        });
      }

      Provider.of<MeetingSummaryProvider>(context).fetchAndSetClubItems().then((_) {
        if(this.mounted){
          setState(() {
            _isLoading = false;
          });
        }
      });
    }
    _isInit = false;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MeetingSummaryProvider>(context);
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
                    padding: EdgeInsets.only(
                      left: 15,
                      right: 15,
                      top: 8,
                      bottom: 8,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  CommonBorderContainer(
                    backColor: Colors.white,
                    widget: Text(
                      '지역',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    padding: EdgeInsets.only(
                      left: 15,
                      right: 15,
                      top: 8,
                      bottom: 8,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  CommonBorderContainer(
                    backColor: Colors.white,
                    widget: Text(
                      '카테고리',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    padding: EdgeInsets.only(
                      left: 15,
                      right: 15,
                      top: 8,
                      bottom: 8,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
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
                  SizedBox(
                    width: 5,
                  ),
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
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.keyboard_arrow_down_outlined,
                    size: 20,
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              _isLoading
                  ? const Center(child: CircularProgressIndicator(color: Colors.grey,))
                  : Column(
                      children: [
                        for (int num = 0; num < provider.club.length; num++)
                          ClubContainer(
                            width: double.infinity,
                            image: provider.club[num].image,
                            icon: (provider.club[num].like
                                ? Icon(Icons.favorite)
                                : Icon(Icons.favorite_border)),
                            onPressed: () {
                              provider.changeLike(provider.club[num]);
                            },
                            tag: provider.club[num].tag,
                            title: provider.club[num].title,
                            location: provider.club[num].location,
                            date: provider.club[num].date,
                            participants: provider.club[num].participants,
                            total: provider.club[num].total,
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
