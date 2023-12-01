import 'package:flutter/material.dart';

import '../../../widget/atoms/rounded_follow_button.dart';

class SearchMember extends StatelessWidget {
  List<String> image = ['https://i.namu.wiki/i/0bpXUy1sCayiy-mODi-8wH5hL7yfgXXyz0IK8o-EskfacnmZB5_mwfH8aT3l2pnXLQO_qW4dAVSJFrjY1hVAAQ.webp',
  'https://img.sportsworldi.com/content/image/2022/11/30/20221130515520.jpg',
  'https://image.news1.kr/system/photos/2023/7/24/6119716/article.jpg/dims/quality/80/optimize',
  'https://www.joseilbo.com/gisa_img_origin/16534640041653464004_joseedu_origin.jpg',
  'https://ondostudio.co.kr/wp-content/uploads/2019/12/2-5.jpg',
  'https://i.pinimg.com/1200x/2c/2c/60/2c2c60b20cb817a80afd381ae23dab05.jpg'];
  List<String> name = ['손우진', '류아', '탱구', '윤성진', '말롱', '돼지불백'];
  List<String> introduce = ['문래동에서 그림 그리는 갤러리 운영하며 그림 그리는 작가입니다!',
  '<지적인고양이>',
  '공예하는 삶~',
  '다양한 취미로 내삶에 활력을 불어넣고 싶어요',
  '몰랐던 취미나 관심사를 함께 발굴해나가 봐요!',
  '늘 배우고 성장하는 것이 가장 큰 목표에요.'];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: image.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage(image[index]),
            ),
            title: Text(
              name[index],
              style: TextStyle(
                fontSize: 17,
              ),
            ),
            subtitle: Text(
              introduce[index],
              maxLines: 1,
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey,
                overflow: TextOverflow.ellipsis
              ),
            ),
            trailing: RoundedFollowButton(),
          );
        }
        );
  }
}
