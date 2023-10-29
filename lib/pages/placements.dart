import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

class PlacementsScreen extends StatelessWidget {
  const PlacementsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0XFFA233C5),
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'unipedia',
          style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
              color: Color(0xFFFDFFFF)),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white,),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      // backgroundColor: const Color(0xFFD1F8F7),
      body: SingleChildScrollView(
          child: Column(
        children: [
          myPadding(),
          topCarousel(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.0),
                    color: Color(0XFFA233C5),
                  )
                  ,

              child: Column(
                children: [
                  myPadding(),
                  // ExploreText(),
                  // myPadding(),
                  SummerInternships(context),
                  PlacementsButton(),
                  Cat1Cat2(context),
                  myPadding(),
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }

  Padding ExploreText() {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Text(
        'Explore Interships',
        style: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  GestureDetector PlacementsButton() {
    return GestureDetector(
      onTap: () async {
        const url = 'https://example.com';
        await launch(url);
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SizedBox(
            height: 124.0,
            child: Card(
              elevation: 5,
              color: Color(0XFFD07AEB),
              child: Center(
                child: ListTile(
                  title: Text('Placements',
                    style: TextStyle(fontSize: 26.0,
                        color: Color(0xFFFDFFFF))),
                  trailing: SvgPicture.asset(
                    'assets/images/notes.svg',
                    height: 64.0,
                    width: 64.0,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget Cat1Cat2(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
            onTap: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => const eventsScreen(title: 'g',)),
              // );
            },
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0XFFD07AEB),
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Container(
                width: 140.0,
                height: 140.0,
                child: Column(
                  children: [
                    myPadding(),
                    SvgPicture.asset(
                      'assets/images/codes.svg',
                      width: 55.0,
                      height: 55.0,
                    ),
                    const SizedBox(height: 20.0),
                    const Text(
                      'CAT 1',
                      style:
                          TextStyle(fontSize: 16.0, color: Color(0xFFFDFFFF)),
                    ),
                  ],
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => const eventsScreen(title: 'h',)),
              // );
            },
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0XFFD07AEB),
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Container(
                width: 140.0,
                height: 140.0,
                child: Column(
                  children: [
                    myPadding(),
                    SvgPicture.asset(
                      'assets/images/senior_connect.svg',
                      width: 55.0,
                      height: 55.0,
                    ),
                    const SizedBox(height: 20.0),
                    const Text(
                      'CAT 2',
                      style:
                          TextStyle(fontSize: 16.0, color: Color(0xFFFDFFFF)),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
CarouselSlider topCarousel() {
    return CarouselSlider(
      items: [
        Container(
          margin: const EdgeInsets.all(5.0),
          width: 500,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: const Color(0XFFD07AEB),
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
            color: const Color(0XFFD07AEB),
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
            color: const Color(0XFFD07AEB),
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
  Widget SummerInternships(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
            onTap: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => const eventsScreen(title: 'g',)),
              // );
            },
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0XFFD07AEB),
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Container(
                width: 140.0,
                height: 140.0,
                child: Column(
                  children: [
                    myPadding(),
                    SvgPicture.asset(
                      'assets/images/codes.svg',
                      width: 55.0,
                      height: 55.0,
                    ),
                    const SizedBox(height: 20.0),
                    const Text(
                      'Summer Intern',
                      style:
                          TextStyle(fontSize: 16.0, color: Color(0xFFFDFFFF)),
                    ),
                  ],
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => const eventsScreen(title: 'h',)),
              // );
            },
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0XFFD07AEB),
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Container(
                width: 140.0,
                height: 140.0,
                child: Column(
                  children: [
                    myPadding(),
                    SvgPicture.asset(
                      'assets/images/senior_connect.svg',
                      width: 55.0,
                      height: 55.0,
                    ),
                    const SizedBox(height: 20.0),
                    const Text(
                      'Winter Intern',
                      style:
                          TextStyle(fontSize: 16.0, color: Color(0xFFFDFFFF)),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  SizedBox myPadding() => const SizedBox(height: 16.0);
}
