import 'package:flutter/material.dart';
import 'package:tree/list.dart';

void main() {
  runApp(MyApp());
}

enum SplashScreenLoading {
  loading,
  finished,
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int count = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        body: MyList(count),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            setState(() {
              count++;
            });
          },
        ),
      ),
    );
  }
}
