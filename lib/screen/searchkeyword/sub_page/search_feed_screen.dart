import 'package:flutter/material.dart';



class SearchFeedScreen extends StatelessWidget{
  List<String> imageList = ['https://img.newspim.com/news/2023/04/26/2304261621443180.jpg',
    'https://content.skyscnr.com/m/64f1189bc1e2bf0e/original/UK-ST3-165-TRAVELTRENDS-Q323-Article2-1-2.jpg?crop=1224px:647px&quality=100&position=attention',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSsYeU_xa0PN9zgmYzlkTMVGKJ4ulAGevTa9A&usqp=CAU',
    'https://img1.daumcdn.net/thumb/C300x430/?fname=https%3A%2F%2Ft1.daumcdn.net%2Fmovie%2Ff47bdb7c3174e8bcf43fb6ab27283fc2f4d34555',
    'https://www.jejudreamtower.com/assets/global/jdt/m/images/etc/dine_cafe8_kv3_mo.jpg',
    'https://res.heraldm.com/phpwas/restmb_idxmake.php?idx=507&simg=/content/image/2021/12/05/20211205000027_0.jpg',
    'https://www.kgnews.co.kr/data/photos/20221252/art_16720066405201_40a4f5.jpg',
    'https://archivenew.vop.co.kr/images/809ead1da2f082b19e643d95a616110f/2012-11/01035225_50552923.2.jpg',
    'https://talkimg.imbc.com/TVianUpload/tvian/TViews/image/2023/03/26/2fd134bf-02a9-41f7-bcb2-2564578754e8.png',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR9H6XJmOLCdSEBEhAbMl-AmYhcqNYkPrA_Nw&usqp=CAU',
    'https://image-cdn.hypb.st/https%3A%2F%2Fkr.hypebeast.com%2Ffiles%2F2023%2F04%2Fthe-best-nba-player-poll-by-the-athletic-2023-ft.jpg?w=960&cbr=1&q=90&fit=max',
    'https://i.namu.wiki/i/kb9VxMbaOAEUKUuma6g-DyFkg1uEAKLahn2_srjZIBkCxeCcZFj5tSYxh5kY7pTGOZq0nRD-4R9e9vNfmhefkg.webp',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHYacd5-P_zEixX9vzpfiYzyiRa0liyOXE6g&usqp=CAU',
    'https://biz.chosun.com/resizer/xlD2dwMPPI3E3kSzAUU_KVFSfxs=/464x0/smart/cloudfront-ap-northeast-1.images.arcpublishing.com/chosunbiz/OIV3ANN5RK2QHAHY5UPPH2XGXA.jpg',
    'https://ojsfile.ohmynews.com/STD_IMG_FILE/2014/0323/IE001692752_STD.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: EdgeInsets.zero,
      crossAxisCount: 3,
      mainAxisSpacing: 1,
      crossAxisSpacing: 1,
      childAspectRatio: 1 / 1.2,
      children: [
        for(int i = 0; i < imageList.length; i++)
        Container(
            child: Image.network(imageList[i], fit: BoxFit.fill,),
        ),
      ]
    );
  }
}