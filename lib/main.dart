import 'package:flutter/material.dart';

import 'pages/index/index.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'JD_Shopping',
      home: IndexPage(),
    );
  }
}

void main() => runApp(new MyApp());
