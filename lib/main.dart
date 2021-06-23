import 'dart:async';

import 'package:flutter/material.dart';
import 'package:tree/list.dart';

void main() {
  runApp(MyApp());
}

enum SplashScreenLoading {
  loading,
  finished,
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyList()
    );
  }
}

