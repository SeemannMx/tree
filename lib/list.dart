import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyList extends StatefulWidget {
  const MyList({Key key}) : super(key: key);

  @override
  _MyListState createState() => _MyListState();
}

class _MyListState extends State<MyList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index) {
          return Container(
            child: Text("Hello World"),
            color: Colors.blue,
          );
        });
  }
}
