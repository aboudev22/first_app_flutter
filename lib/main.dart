import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    const title = 'Stateless Widget demo';
    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(title: const SelectableText(title)),
        body: const MyTextWidget(),
      ),
    );
  }
}

class MyTextWidget extends StatefulWidget {
  const MyTextWidget({super.key});
  @override
  MyTextWidgetState createState() => MyTextWidgetState();
}

class MyTextWidgetState extends State<MyTextWidget> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:
          () => {
            setState(() {
              count++;
            }),
          },
      child: Center(child: Text("Click ici: $count")),
    );
  }
}
