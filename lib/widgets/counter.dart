import 'package:flutter/material.dart';

class MyTextWidget extends StatefulWidget {
  const MyTextWidget({super.key});
  @override
  MyTextWidgetState createState() => MyTextWidgetState();
}

class MyTextWidgetState extends State<MyTextWidget> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap:
            () => setState(() {
              count++;
            }),
        child: Center(child: Text("Click me: $count")),
      ),
    );
  }
}
