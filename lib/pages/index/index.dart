import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'top_banner.dart';
import 'bottom_navigate_bar.dart';

class IndexPage extends StatefulWidget {
  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
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
            TopBanner(),
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