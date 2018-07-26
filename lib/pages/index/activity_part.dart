import 'package:flutter/material.dart';

class ActivityPart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Image.asset('assets/images/activity_1.jpg'),
        ),
        Expanded(
          child: Image.asset('assets/images/activity_2.jpg'),
        ),
        Expanded(
          child: Image.asset('assets/images/activity_3.jpg'),
        )
      ],
    );
  }
}