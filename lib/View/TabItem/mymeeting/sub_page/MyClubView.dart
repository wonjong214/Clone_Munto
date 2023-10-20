import 'package:flutter/material.dart';

class MyClubView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 30),
          Text('좋아요'),
          SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 15),
                Icon(Icons.favorite_border),
                SizedBox(height: 15),
                Text('좋아요를 누른 클럽이 없어요'),
                SizedBox(height: 15),
                Text('관심 있는 클럽에 좋아요를 남기면 여기에서 확인할 수 있어요')
              ],
            ),
          ),
          SizedBox(height: 30),
          Text('대기'),
          SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 15),
                Icon(Icons.stars_sharp),
                SizedBox(height: 15),
                Text('대기하고 있는 클럽이 없어요'),
                SizedBox(height: 15),
                Text('참여 신청한 클럽은 여기에서 확인할 수 있어요')
              ],
            ),
          ),
          SizedBox(height: 30),
          Text('참여'),
          SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 15),
                Icon(Icons.stars_sharp),
                SizedBox(height: 15),
                Text('참여하고 있는 클럽이 없어요'),
                SizedBox(height: 15),
                Text('참여 확정된 클럽은 여기에서 확인할 수 있어요')
              ],
            ),
          ),
          SizedBox(height: 30),
          Text('진행'),
          SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 15),
                Icon(Icons.add_circle_outline_sharp),
                SizedBox(height: 15),
                Text('진행하는 클럽이 없어요'),
                SizedBox(height: 15),
                Text('내가 진행하는 클럽은 여기에서 확인할 수 있어요')
              ],
            ),
          ),
        ],
      ),
    );
  }
}