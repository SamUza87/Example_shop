import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';



class ProductImagesSlider extends StatelessWidget {
  const ProductImagesSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return ImageSlideshow(
      indicatorColor: Colors.white,
      height: 400,
      autoPlayInterval: 3000,
      indicatorRadius: 4,
      isLoop: true,
      children: [
        Padding(
          padding: EdgeInsets.all(8),
          child: Image.asset("assets/p1.png"),),
          Padding(
          padding: EdgeInsets.all(8),
          child: Image.asset("assets/p2.png"),),
          Padding(
          padding: EdgeInsets.all(8),
          child: Image.asset("assets/p3.png"),),
          Padding(
          padding: EdgeInsets.all(8),
          child: Image.asset("assets/p4.png"),),
           Padding(
          padding: EdgeInsets.all(8),
          child: Image.asset("assets/p5.png"),),
           Padding(
          padding: EdgeInsets.all(8),
          child: Image.asset("assets/p6.png"),),
           Padding(
          padding: EdgeInsets.all(8),
          child: Image.asset("assets/p7.png"),),
           Padding(
          padding: EdgeInsets.all(8),
          child: Image.asset("assets/p8.png"),),
          
        

    ],);
  }
}