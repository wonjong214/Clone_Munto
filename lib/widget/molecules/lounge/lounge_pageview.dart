import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../providers/resolution_provider.dart';


class LoungePageView extends StatefulWidget{
  List<String> image;

  LoungePageView({required this.image});

  @override
  State<StatefulWidget> createState() {
    return LoungePageView_State();
  }
}

class LoungePageView_State extends State<LoungePageView>{
  List<Widget> _pages;
  final PageController _pageController = PageController(initialPage: 0);
  int _activePage = 0;

  LoungePageView_State(): _pages = List.empty(growable: true){

  }

  @override
  Widget build(BuildContext context) {
    _pages = [
      for(int i = 0; i < widget.image.length; i++ )
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(widget.image[i]),
                  fit: BoxFit.cover)
          ),
        )
    ];

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