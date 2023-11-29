import 'dart:async';

import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../../../../view_model/exhibitions_provider.dart';
import '../../atoms/keyword_tag_container.dart';


class ExhibitionsView extends StatefulWidget{
  double? height;

  ExhibitionsView({this.height});

  @override
  State<ExhibitionsView> createState() => _ExhibitionsViewState();
}

class _ExhibitionsViewState extends State<ExhibitionsView> {
  int currentPage = 0;
  late Timer _timer;
  PageController controller = PageController(
      initialPage: 0,
  );

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(Duration(seconds: 3), (Timer timer) {
      if (currentPage < 4) {
        currentPage++;
      } else {
        currentPage = 0;
      }

      controller.animateToPage(
        currentPage,
        duration: Duration(milliseconds: 350),
        curve: Curves.easeIn,
      );
    });
  }

  @override
  void dispose() {
    super.dispose();
    _timer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<ExhibitionsProvider>(context);
    return Stack(
      children: [
        Container(
            height: widget.height,
            width: double.infinity,
            margin: EdgeInsets.all(20),
            child: PageView(
              controller: controller,
              onPageChanged: (num){ provider.pagechange(num);},
              children: [
                for(int i = 0; i< provider.exhibitions.length; i++)
                GestureDetector(
                    child: Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(provider.exhibitions[i].image),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                              provider.exhibitions[i].title,
                              style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)
                          ),
                          SizedBox(height: 10,),
                          KeyWordTagContainer(
                            text: '소셜링 콘테스트',
                            textSize: 15,
                            fontWeight: FontWeight.w600,
                            textColor: Colors.white,
                            backColor: Colors.transparent,
                            padding: EdgeInsets.only(left: 12, right: 12, bottom: 8, top: 8),
                            border: Border.all(width: 1, color: Colors.white),
                          ),
                          SizedBox(height: 20,),
                        ],
                      ),
                      /*Align(
                        alignment: Alignment.bottomCenter,
                        child:
                          Text(
                              provider.exhibitions[i].title,
                              style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)
                          ),
                      ),*/
                    ),
                ),
              ],
            )
        ),
        Positioned(
            bottom: 30,
            right: 30,
            child: Container(
              padding: EdgeInsets.only(left: 15, right: 12, top: 4, bottom: 4),
              decoration: BoxDecoration(
                color: Color.fromRGBO(0, 0, 0, 0.5),
                borderRadius: BorderRadius.circular(20)
              ),
              child: Text(
                '${provider.currentPage}/5 +',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.white,
                ),
              ),
            )

        )
      ],
    );
  }
}