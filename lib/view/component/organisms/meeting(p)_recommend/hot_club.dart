import 'package:flutter/material.dart';
import 'package:loginscreen/constants/colors.dart';
import 'package:provider/provider.dart';
import '../../../../constants/fontsize.dart';
import '../../../../view_model/meeting_provider_view_model.dart';
import '../../atoms/common_text.dart';
import '../../atoms/more_button.dart';
import '../../molecules/meeting/club_container.dart';

class HotClub extends StatefulWidget {
  @override
  State<HotClub> createState() => _HotClubState();
}

class _HotClubState extends State<HotClub> {
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
        width: double.infinity,
        margin: EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CommonText(
              text: '지금 핫한 클럽',
              textSize: meetingTabGroupTitleTextSize,
              fontWeight: meetingTabGroupTitleFontWeight,
            ),
            SizedBox(height: 8),
            Text(
              '지금 멤버들이 몰리고 있는',
              style: TextStyle(color: meetingTabGroupSubTitleColor),
            ),
            SizedBox(height: 8),
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
            MoreButton(double.infinity)
          ],
        ));
  }
}