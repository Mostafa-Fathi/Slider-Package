import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task/Screens/CustomItemDemo.dart';
import 'package:task/Screens/ImagesDemo.dart';

void main() =>
    runApp(MaterialApp(

        debugShowCheckedModeBanner: false, home :MyApp()));

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Slider Demo"),
        ),
        body: ListView(
          children: [
            ListTile(title: Text("Custom Item Demo"),
              onTap: () =>
              {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return CustomItemDemo();
                }))
              },),
            ListTile(title: Text(" Image Demo "),
              onTap: () =>
              {

                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ImageDemo();
                }))
              },)
          ],
        )
    );
  }
}
