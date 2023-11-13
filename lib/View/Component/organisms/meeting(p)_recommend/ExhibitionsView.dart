import 'dart:async';

import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../../../../ViewModel/Recommend_Page/Exhibitions.dart';


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
    var provider = Provider.of<Exhibitions_Provider>(context);
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
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child:
                          Text(
                              provider.exhibitions[i].title,
                              style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)
                          ),
                      ),
                      padding: EdgeInsets.only(bottom: 80),
                    )
                ),
              ],
            )
        ),
        Positioned(
            bottom: 30,
            right: 30,
            child: Container(
              padding: EdgeInsets.only(left: 7, right: 7, top: 4, bottom: 4),
              decoration: BoxDecoration(
                color: Color.fromRGBO(0, 0, 0, 0.5),
                borderRadius: BorderRadius.circular(20)
              ),
              child: Text(
                '${provider.currentpage}/5+',
                style: TextStyle(
                    color: Colors.white
                ),
              ),
            )

        )
      ],
    );
  }
}
