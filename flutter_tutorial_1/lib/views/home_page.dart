import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List imgList = [
    'assets/places/slider-2.jpg',
    'assets/places/slider-3.jpg',
    'assets/places/slider-4.jpg',
    'assets/places/slider-5.jpg',
  ];

  late CarouselSlider carouselSlider;
  int _current = 0;

  @override
  Widget build(BuildContext context) {

    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: Column(
        children: [
          Text('Countries'),
          carouselSlider = CarouselSlider(
            items: imgList.map((imgAsset){
              return Builder(builder: (BuildContext context){
                return Container(
                  width: size.width,
                  margin: EdgeInsets.symmetric(horizontal: 10.0),
                  decoration: BoxDecoration(),
                  child: Image.asset(
                    imgAsset,
                    fit: BoxFit.fill,
                    ),
                );
                
              });
            }).toList(), 
            options: CarouselOptions(
              height: size.height * .25,
              initialPage: 0,
              enlargeCenterPage: true,
              autoPlay: true,
              reverse: false,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: Duration(seconds: 2),
              autoPlayInterval: Duration(seconds: 2),
              scrollDirection: Axis.horizontal,

              onPageChanged: (index, reason) {
                  setState(() {
                    _current = index;
                  });
              },
            ),
          )
        ],
      )
    );
  }
}