import 'package:flutter/material.dart';

import '../../components/slide-show.dart';

class TopBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = 366.0 * width / 750.0;
    return Container(
      height: height,
      child: SlideShow(
        currentIndex: 0,
        items: [
          Container(
            child: Image.asset(
              'assets/images/banner_1.jpg',
            ),
          ),
          Container(
            child: Image.asset(
              'assets/images/banner_2.jpg',
            ),
          ),
          Container(
            child: Image.asset(
              'assets/images/banner_3.jpg',
            ),
          ),
          Container(
            child: Image.asset(
              'assets/images/banner_4.jpg',
            ),
          ),
          Container(
            child: Image.asset(''
              'assets/images/banner_5.jpg',
            ),
          ),
        ],
      ),
    );
  }
}