import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task/Model/item.dart';
import 'package:task/Utils/Slider.dart';

class CustomItemDemo extends StatelessWidget{
  List<Widget> listItems = [];
  List<Item> responseList = [
    Item("first one ", (Icons.eleven_mp), Colors.pinkAccent,
        "This is Eleven Map Icon"),
    Item("second one ", (Icons.add), Colors.greenAccent, "This is Add Icon"),
    Item("third one ", (Icons.six_ft_apart), Colors.red,
        "This is Six ft Apart Icon"),
    Item("fourth one ", (Icons.ac_unit), Colors.cyan, "This is Ac Unit Icon"),
    Item("fifth one ", (Icons.delete), Colors.orange, "This is Delete Icon"),
    Item("sixth one ", (Icons.height), Colors.yellow, "This is Height Icon"),
    Item("Last one ", (Icons.zoom_out_map_sharp), Colors.green,
        "This is Zoom Out Map Icon")
  ];

  @override
  Widget build(BuildContext context) {
    responseList.forEach((post) {
      listItems.add(SizedBox(
          width: 400,
          height: 450,
          child: Column(children: [
            Expanded(
                child: Container(
                    height: 230,
                    width: 400,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      color: post.color,
                    ),
                    child: Center(
                      child: Padding(
                          padding: EdgeInsets.only(top: 30),
                          child: Column(
                            children: <Widget>[
                              Center(
                                  child: Icon(
                                    post.icon,
                                    size: 80,
                                    color: Colors.white,
                                  )),
                              Expanded(
                                  child: Padding(
                                      padding: EdgeInsets.only(top: 20),
                                      child: Center(
                                          child: Text(
                                            post.title,
                                            style: const TextStyle(
                                                fontSize: 25,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          )))),
                            ],
                          )),
                    ))),
            Text(
              post.title,
              style: TextStyle(fontSize: 18),
            ),
          ])));
    });

    return MaterialApp(

        debugShowCheckedModeBanner: false,
        home: Scaffold(
        appBar: AppBar(
        title: Text("Slider Demo"),
    ),
    body:  Container(
            child: Padding(
                padding: EdgeInsets.only(top: 50),
                child: SnapSlider(
                  listItems,
                  itemHeigth: 450,
                  itemWidth: 200,
                  itemViewPortFraction: .5,
                ),
      ),
    )));
  }
}

