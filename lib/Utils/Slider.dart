import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Model/item.dart';


class SnapSlider extends StatelessWidget {
  double itemWidth, itemHeigth;
  List<Widget> sliderItems = [];
  double itemViewPortFraction;


  SnapSlider(this.sliderItems, { @required this.itemWidth, @required this.itemHeigth,@required this.itemViewPortFraction});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(

      itemCount: sliderItems.length,
      options: CarouselOptions(
        autoPlay: false,
        enableInfiniteScroll: true,
        enlargeStrategy: CenterPageEnlargeStrategy.height,
        viewportFraction: itemViewPortFraction,

        enlargeCenterPage: true,
      ),
      itemBuilder: (context, index, realIdx) {
        return Container(width:itemWidth,height: itemHeigth,
          child: sliderItems[index],
        );
      },
    )
    ;
  }

}