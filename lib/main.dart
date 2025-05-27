import 'package:fisrt_app/widgets/container.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    const title = 'Image Widget';
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      home: Scaffold(
        appBar: AppBar(title: const Text(title)),
        body: MyContainerWidget(),
      ),
    );
  }
}
