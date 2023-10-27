// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_svg/flutter_svg.dart';
class eventsScreen extends StatelessWidget {
  const eventsScreen({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
            backgroundColor: const Color(0xFF47A9A5),
            elevation: 0,
            centerTitle: true,
            title: const Text(
              'unipedia',
              style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFFDFFFF)),
            ),
          ),
      backgroundColor: const Color(0xFFD1F8F7),
      body:SingleChildScrollView(
          child: Column(
            children: [
              myPadding(),
              topCarousel(),
              myPadding(),
              
            
            ],
          ),
        ),
    );
  }
}
SizedBox myPadding() => const SizedBox(height: 16.0);
CarouselSlider topCarousel() {
    return CarouselSlider(
      items: [
        Container(
          margin: const EdgeInsets.all(5.0),
          width: 500,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: const Color(0xFF47A9A5),
          ),
          
            child: Column(
              
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/images/carousel_1.svg',
                  width: 100.0,
                  height: 100.0,
                ),
                const SizedBox(height: 16.0),
                const Text(
                  'Get Ready for internships',
                  style: TextStyle(fontSize: 24.0, color: Colors.white),
                ),
                const SizedBox(height: 8.0),
                const Text(
                  'Stay tuned',
                  style: TextStyle(fontSize: 16.0, color: Colors.white),
                ),
              ],
            ),
        
        ),
        Container(
          margin: const EdgeInsets.all(5.0),
          width: 500,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: const Color(0xFF47A9A5),
          ),
          
            child: Column(
              
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/images/notes.svg',
                  width: 100.0,
                  height: 100.0,
                ),
                const SizedBox(height: 16.0),
                const Text(
                  'Heading',
                  style: TextStyle(fontSize: 24.0, color: Colors.white),
                ),
                const SizedBox(height: 8.0),
                const Text(
                  'Subheading',
                  style: TextStyle(fontSize: 16.0, color: Colors.white),
                ),
              ],
            ),
        
        ),
        Container(
          margin: const EdgeInsets.all(5.0),
          width: 500,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: const Color(0xFF47A9A5),
          ),
          
            child: Column(
              
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/images/notes.svg',
                  width: 100.0,
                  height: 100.0,
                ),
                const SizedBox(height: 16.0),
                const Text(
                  'Heading',
                  style: TextStyle(fontSize: 24.0, color: Colors.white),
                ),
                const SizedBox(height: 8.0),
                const Text(
                  'Subheading',
                  style: TextStyle(fontSize: 16.0, color: Colors.white),
                ),
              ],
            ),
        
        ),
      ],
      options: CarouselOptions(
        height: 200.0,
        // enlargeCenterPage: true,
        autoPlay: true,
        aspectRatio: 16 / 9,
        autoPlayCurve: Curves.fastOutSlowIn,
        enableInfiniteScroll: true,
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        viewportFraction: 0.9,
      ),
    );
  }