import 'package:flutter/material.dart';
import 'dart:async';

class SlideShow extends StatefulWidget {
  SlideShow({
    Key key,
    @required this.items,
    this.currentIndex
  }): assert(items != null),
      assert(-1 < currentIndex && currentIndex < items.length),
      super(key: key);

  final int currentIndex;

  final List<Widget> items;

  @override
  _SlideShowState createState() => _SlideShowState();
}

class _SlideShowState extends State<SlideShow> {

  final double _radius = 10.0;

  int _currentIndex;

  List<Widget> _slideDots;

  PageController _controller;

  Timer _timer;

  static const _kDuration = const Duration(milliseconds: 300);

  static const _kCurve = Curves.ease;

  void _onSlideDotTap(int index) {
    _timer.cancel();
    _timer = Timer(Duration(seconds: 2), _timerHandler);

    setState(() {
      _currentIndex = index;
      _generateSlideDots();
      _controller.animateToPage(
        index,
        duration: _kDuration,
        curve: _kCurve
      );
    });
  }

  void _onPageChange(int index) {
    _timer.cancel();
    _timer = Timer(Duration(seconds: 2), _timerHandler);

    setState(() {
      _currentIndex = index;
      _generateSlideDots();
    });
  }

  void _generateSlideDots() {
    _slideDots = [];
    for (int i = 0; i < widget.items.length; i++) {
      if (i == _currentIndex) {
        _slideDots.add(GestureDetector(
          child: Container(
            width: _radius,
            height: _radius,
            margin: EdgeInsets.symmetric(horizontal: 5.0),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.white,
              ),
              color: Colors.white,
              shape: BoxShape.circle,
            ),
          ),
        ));
      } else {
        _slideDots.add(GestureDetector(
          onTap: () => _onSlideDotTap(i),
          child: Container(
            width: _radius,
            height: _radius,
            margin: EdgeInsets.symmetric(horizontal: 5.0),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.white
              ),
              shape: BoxShape.circle,
            ),
          ),
        ));
      }
    }
  }

  void _timerHandler() {
    _timer = Timer(Duration(seconds: 2), _timerHandler);

    setState(() {
      _currentIndex = _currentIndex == widget.items.length ? 0 : _currentIndex + 1;
      _generateSlideDots();
      _controller.animateToPage(
        _currentIndex,
        duration: _kDuration,
        curve: _kCurve
      );
    });
  }

  @override
  void initState() {
    _currentIndex = widget.currentIndex;
    _controller = PageController(
      initialPage: widget.currentIndex
    );
    _generateSlideDots();

    _timer = Timer(Duration(seconds: 2), _timerHandler);

    super.initState();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        child: Stack(
          children: <Widget>[
            PageView.builder(
              physics: AlwaysScrollableScrollPhysics(),
              controller: _controller,
              itemBuilder: (BuildContext context, int index) {
                return widget.items[index % widget.items.length];
              },
              onPageChanged: (int index) => _onPageChange(index),
            ),
            Positioned(
              left: 0.0,
              right: 0.0,
              bottom: 15.0,
              child: Row(
                children: _slideDots,
                mainAxisAlignment: MainAxisAlignment.center,
              ),
            )
          ],
        ),
      ),
    );
  }
}
