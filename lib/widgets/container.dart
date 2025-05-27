import 'package:flutter/material.dart';

class DataItem {
  final String title;
  final String url;
  final String subtitle;

  const DataItem({
    required this.title,
    required this.subtitle,
    required this.url,
  });
}

class MyContainerWidget extends StatelessWidget {
  MyContainerWidget({super.key});
  final data = DataItem(
    title: "Hello",
    subtitle: "subtitle",
    url: "https://oreil.ly/O4PEn",
  );
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.network(data.url, width: 200, height: 200),
          SelectableText(data.title),
          SelectableText(data.subtitle),
        ],
      ),
    );
  }
}
