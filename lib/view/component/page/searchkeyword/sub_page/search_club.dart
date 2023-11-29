import 'package:flutter/material.dart';
import 'package:loginscreen/constants/colors.dart';
import 'package:loginscreen/view/component/atoms/common_border_container.dart';
import 'package:provider/provider.dart';

import '../../../../../view_model/meeting_provider_view_model.dart';
import '../../../molecules/meeting/club_container.dart';

class SearchClub extends StatefulWidget {
  @override
  State<SearchClub> createState() => _SearchClubState();
}

class _SearchClubState extends State<SearchClub> {
  bool _isInit = true;
  bool _isLoading = false;

  @override
  void didChangeDependencies() {
    if (_isInit) {
      setState(() {
        _isLoading = true;
      });

      Provider.of<MeetingProvider>(context).fetchAndSetClubItems().then((_) {
        setState(() {
          _isLoading = false;
        });
      });
    }
    _isInit = false;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MeetingProvider>(context);
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
                  ? const Center(child: CircularProgressIndicator())
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
