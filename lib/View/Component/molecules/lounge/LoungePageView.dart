import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../ViewModel//ResolutionProvider.dart';

class LoungePageView extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return LoungePageView_State();
  }
}

class LoungePageView_State extends State<LoungePageView>{
  final PageController _pageController = PageController(initialPage: 0);

  int _activePage = 0;

  final List<Widget> _pages = [
    Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/recommend_page/Review/ski.jpeg'),
              fit: BoxFit.cover)
      ),
    ),
    Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/recommend_page/Review/ski.jpeg'),
              fit: BoxFit.cover)
      ),
    )
  ];

  @override
  Widget build(BuildContext context) {
    double width = Provider.of<ResolutionProvider>(context).width_get;
    return Container(
      width: double.infinity,
      height: width,
      child: Stack(
        children: [
          PageView.builder(
            controller: _pageController,
            onPageChanged: (int page) {
              setState(() {
                _activePage = page;
              });
            },
            itemCount: _pages.length,
            itemBuilder: (BuildContext context, int index) {
              return _pages[index % _pages.length];
            },
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            height: 100,
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List<Widget>.generate(
                    _pages.length,
                        (index) => Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 3),
                      child: InkWell(
                        onTap: () {
                          _pageController.animateToPage(index,
                              duration: const Duration(milliseconds: 100),
                              curve: Curves.easeIn);
                        },
                        child: CircleAvatar(
                          radius: 4,
                          backgroundColor: _activePage == index
                              ? Colors.white
                              : Colors.grey,
                        ),
                      ),
                    )),
              ),
            ),
          ),
        ],
      )
    );
  }
}