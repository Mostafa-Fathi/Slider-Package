import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task/Model/item.dart';
import 'package:task/Utils/Slider.dart';

class ImageDemo extends StatelessWidget {
  List<Widget> listItems = [];
  List<String> responseList = [
    "images/1.png",
    "images/2.png",
    "images/3.png",
    "images/4.png",
    "images/5.png",
    "images/6.png"
  ];

  @override
  Widget build(BuildContext context) {
    responseList.forEach((post) {
      listItems.add(Image(
        image: AssetImage(post),
        fit: BoxFit.cover,
        width: 1000,
        height: 900,
      ));
    });
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: Text("Slider Demo"),
            ),
            body: Container(
              child: Padding(
                padding: EdgeInsets.only(top: 70),
                child: SnapSlider(
                  listItems,
                  itemHeigth: 900,
                  itemWidth: 500,
                  itemViewPortFraction: .7,
                ),
              ),
            )));
  }
}
