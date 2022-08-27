import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Carousel extends StatefulWidget {
  const Carousel({Key? key}) : super(key: key);

  @override
  State<Carousel> createState() => _CarouselState();
}

final CarouselController _controller = CarouselController();
int _current = 0;

class _CarouselState extends State<Carousel> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CarouselSlider(
        items: [
          Image.asset("lib/assets/images/everest.jpg"),
          Image.asset("lib/assets/images/machapuchare.jpg"),
          Image.asset("lib/assets/images/dhaulagiri.png"),
        ],

        carouselController: _controller,
        options: CarouselOptions(
          aspectRatio: 2,
          height: 250,
          viewportFraction: 0.69,
          enlargeCenterPage: true,
          enableInfiniteScroll: true,
          initialPage: 3,
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 2),
          autoPlayAnimationDuration: Duration(milliseconds: 800),
        ),
      ),
    );
  }
}
