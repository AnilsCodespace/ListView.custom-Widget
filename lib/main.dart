import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: List2(),
  ));
}

class List2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => List2State();
}

class List2State extends State {
  List<String> names = ["Anil", "Anjali", "Athul", "Akshay","Ardra"];
  List<String> images = [
    "assets/download.png",
    "assets/fdashgf.jfif",
    "assets/images.jfif",
    "assets/images.png",
    "assets/download.jfif"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView.Custom'),
      ),
      body: ListView.custom(childrenDelegate:
      SliverChildBuilderDelegate((BuildContext, int index) {
        return Card(
            child: ListTile(
              leading: Image.asset(images[index]),
              title: Text(names[index]),
            ));
      },childCount: images.length)),


    );
  }
}
