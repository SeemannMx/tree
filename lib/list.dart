import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyList extends StatelessWidget{

  MyList(this.count);

  final int count;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: count,
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.all(16),
          padding: EdgeInsets.all(16),
          child: Text("Hello World"),
          color: Colors.blue,
        );
      },
    );
  }
}
