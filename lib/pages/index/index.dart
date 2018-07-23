import 'package:flutter/material.dart';
import 'dart:math' as math;

import '../../components/slide-show.dart';

import 'bottom_navigate_bar.dart';

class IndexPage extends StatefulWidget {
  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  Widget _createBanner() {
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

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white),
      padding: EdgeInsets.only(
        bottom: math.max(MediaQuery.of(context).padding.bottom - 8.0, 0.0)
      ),
      child: DefaultTextStyle(
        style: TextStyle(
          color: Colors.black87
        ),
        child: Column(
          children: <Widget>[
            _createBanner(),
            Expanded(
              child: Text('123'),
            ),
            MyBottomNavigateBar()
          ],
        ),
      ),
    );
  }
}