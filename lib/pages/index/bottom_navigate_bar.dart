import 'package:flutter/material.dart';

class MyBottomNavigateBar extends StatefulWidget {
  MyBottomNavigateBar({
    Key key
  }) : super(key: key);

  @override
  _MyBottomNavigateBarState createState() => _MyBottomNavigateBarState();
}

class _MyBottomNavigateBarState extends State<MyBottomNavigateBar> {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      decoration: BoxDecoration(
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0.0, -3.0),
            blurRadius: 2.0,
          )
        ],
        color: Colors.white,
        border: Border(
          top: BorderSide(
            color: Colors.grey,
          ),
        )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Expanded(
            child: GestureDetector(
              onTap: null,
              child: Image.asset(
                'assets/icons/index_active.png',
              )
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: null,
              child: Image.asset(
                'assets/icons/classify.png',
              )
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: null,
              child: OverflowBox(
                maxHeight: double.infinity,
                alignment: Alignment.bottomCenter,
                child: Image.asset(
                  'assets/icons/activity.png',
                ),
              )
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: null,
              child: Image.asset(
                'assets/icons/shopping_cart.png',
              )
            )
          ),
          Expanded(
            child: GestureDetector(
              onTap: null,
              child: Image.asset(
                'assets/icons/user.png',
              )
            ),
          ),
        ],
      ),
    );
  }
}
