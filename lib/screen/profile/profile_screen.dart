import 'package:flutter/material.dart';
import 'package:loginscreen/constants/fontsize.dart';
import 'package:loginscreen/widget/organisms/profile/Feed.dart';
import 'package:loginscreen/widget/organisms/profile/Meeting.dart';
import 'package:loginscreen/widget/organisms/profile/Tag.dart';
import 'package:provider/provider.dart';
import '../../../../constants/border.dart';
import '../../../../constants/colors.dart';
import '../../providers/resolution_provider.dart';
import '../../widget/molecules/profile/Profile_Image.dart';
import '../../widget/atoms/circle_icon.dart';
import '../../widget/atoms/common_border_container.dart';
import '../../widget/atoms/keyword_tag_container.dart';
import '../../widget/molecules/profile/text_num_column.dart';

class ProfileScreen extends StatefulWidget {
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  List<String> tagList = [
    '카페',
    '칵테일',
    '콘서트',
    '맛집투어',
    '클라이밍',
    '페스티벌',
    '캘리그라피',
    '음악감상',
    '악기연주',
    '보드게임',
    '해외여행',
    '국내여행',
    '사이드프로젝트'
  ];
  bool tagFolded = false;



  @override
  Widget build(BuildContext context) {
    double width = Provider.of<ResolutionProvider>(context).width_get;
    double height = Provider.of<ResolutionProvider>(context).height_get;

    return Scaffold(
      backgroundColor: Color(0xfffefefe),
      appBar: AppBar(
        backgroundColor: AppBar_color,
        foregroundColor: Colors.black,
        shape: appBarBottomBorder,
        title: Row(
          children: [
            Spacer(),
            SizedBox(child: Icon(Icons.ios_share)),
            SizedBox(
              width: 15,
            ),
            IconButton(
              onPressed: () {
                Navigator.of(context, rootNavigator: true)
                    .pushNamed('/setting');
              },
              icon: Icon(Icons.settings_outlined),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: DefaultTabController(
          length: 3,
          child: NestedScrollView(
            headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled){
              return[
                SliverToBoxAdapter(
                  child: Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 100,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                  'assets/images/recommend_page/TasteSocialRing/cherryblossoms.jpeg')),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10, right: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 60,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context, rootNavigator: true)
                                        .pushNamed('/profileedit');
                                  },
                                  child: ProfileImage(
                                    image: AssetImage(
                                        'assets/images/recommend_page/Exhibitions/nacho.jpeg'),
                                    icon: Icon(
                                      Icons.edit_outlined,
                                      size: 18,
                                    ),
                                  ),
                                ),
                                Spacer(),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context, rootNavigator: true)
                                        .pushNamed('/propensityreport');
                                  },
                                  child: Container(
                                      padding: EdgeInsets.only(
                                          left: 10, right: 10, top: 5, bottom: 5),
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(30),
                                          color: tagColor),
                                      child: Row(
                                        children: [
                                          CircleIcon(
                                            icon: Icon(
                                              Icons.question_mark,
                                              size: 10,
                                              color: Colors.white,
                                            ),
                                            backgroundColor: Colors.grey,
                                            width: 12,
                                            height: 12,
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            '나의 성향 배지',
                                            style: TextStyle(
                                                color: Colors.grey.shade600,
                                                fontSize: 14),
                                          )
                                        ],
                                      )),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context, rootNavigator: true)
                                        .pushNamed('/score');
                                  },
                                  child: Container(
                                      padding: EdgeInsets.only(
                                          left: 10, right: 10, top: 5, bottom: 5),
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(30),
                                          color: Color(0xffebfbe6)),
                                      child: Row(
                                        children: [
                                          Text(
                                            '36.9',
                                            style: TextStyle(
                                                color: Color(0xff77e357), fontSize: 14),
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          CircleIcon(
                                            icon: Icon(
                                              Icons.arrow_forward_ios,
                                              size: 8,
                                              color: Colors.white,
                                            ),
                                            backgroundColor: Color(0xff77e357),
                                            width: 12,
                                            height: 12,
                                          ),
                                        ],
                                      )),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              '김원종',
                              style: TextStyle(
                                  fontSize: mainTitle, fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              '새로운 사람들과 다양한 경험을 쌓고 싶어요',
                              style: TextStyle(),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Wrap(
                              runSpacing: 10,
                              children: List.generate(
                                tagFolded ? tagList.length : 10,
                                    (index) {
                                  if (tagFolded
                                      ? (index < tagList.length - 1)
                                      : (index < 9))
                                    return Padding(
                                      padding: const EdgeInsets.only(right: 10),
                                      child: KeyWordTagContainer(
                                        border: Border.all(width: 1, color: tagColor),
                                        text: tagList[index],
                                      ),
                                    );
                                  else
                                    return GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          if (tagFolded == true)
                                            tagFolded = false;
                                          else
                                            tagFolded = true;
                                        });
                                      },
                                      child: KeyWordTagContainer(
                                        text:
                                        tagFolded ? '접기' : '+${tagList.length - 9}',
                                        textColor: Colors.grey,
                                        border:
                                        Border.all(width: 1, color: Colors.grey),
                                        backColor: Colors.transparent,
                                      ),
                                    );
                                },
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Row(
                              children: [
                                TextNumColumn(),
                                Spacer(),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context, rootNavigator: true)
                                        .pushNamed('/FeedWrite_Page');
                                  },
                                  child: CommonBorderContainer(
                                    padding: EdgeInsets.only(
                                        left: 8, right: 8, top: 3, bottom: 3),
                                    borderColor: Colors.grey,
                                    widget: Row(
                                      children: [
                                        Icon(
                                          Icons.add_circle,
                                          color: Colors.black,
                                          size: 20,
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          '글쓰기',
                                          style: TextStyle(fontSize: 16),
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                
                SliverOverlapAbsorber(
                  handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                  sliver: SliverPersistentHeader(
                    delegate: TabBarDelegate(),
                    pinned: true,
                  ),
                )
              ];
            },
            body: Container(
              margin: EdgeInsets.only(top: 49),
              child: TabBarView(
                children: [
                  Feed(),
                  Tag(),
                  Meeting(),
                ],
              ),
            ),
          ),
        ),
      )
    );
  }


}

class TabBarDelegate extends SliverPersistentHeaderDelegate {
  const TabBarDelegate();

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: Align(
          alignment: Alignment.center,
          child: TabBar(
            indicatorSize: TabBarIndicatorSize.tab,
            labelColor: Colors.black,
            unselectedLabelColor: Colors.grey,
            indicatorPadding:
            EdgeInsets.only(left: 15, right: 15),
            indicatorColor: Colors.black,
            tabs: [
              Tab(
                  child:
                  Text('피드', style: TextStyle(fontSize: 18))),
              Tab(
                  child:
                  Text('태그', style: TextStyle(fontSize: 18))),
              Tab(
                  child:
                  Text('모임', style: TextStyle(fontSize: 18))),
            ],
          ),
        )
    );
  }

  @override
  double get maxExtent => 48;

  @override
  double get minExtent => 48;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
