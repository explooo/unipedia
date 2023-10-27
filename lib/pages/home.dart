import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:unipedia/pages/events.dart';
import 'package:flutter_svg/flutter_svg.dart';
class HomePage extends StatelessWidget {
  const HomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFD1F8F7),
      body:SingleChildScrollView(
          child: Column(
            children: [
              myPadding(),
              topCarousel(),
              myPadding(),
              StudyToolsText(),
              myPadding(),
              notesAcessPapers(context),
              myPadding(),
              codesSeniorConnect(context),
              myPadding(),
              eventsText()
            
            ],
          ),
        ),
      
  
    );
  }

  Padding eventsText() {
    return const Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            'Events',
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        );
  }

  SizedBox myPadding() => const SizedBox(height: 16.0);
Widget codesSeniorConnect(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const eventsScreen(title: 'g',)),
              );
            },
            child: Container(
                decoration: BoxDecoration(
              color: Color(0xFF47A9A5),
              borderRadius: BorderRadius.circular(10.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
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
                        width: 75.0,
                        height: 75.0,
                      ),
                      const SizedBox(height: 20.0),
                      const Text(
                        'Codes',
                        style: TextStyle(fontSize: 16.0,
                        color: Color(0xFFFDFFFF)
                        ),
                        
                      ),
                    ],
                  ),
                ),
              ),
            
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const eventsScreen(title: 'h',)),
              );
            },
            child: Container(
                decoration: BoxDecoration(
              color: Color(0xFF47A9A5),
              borderRadius: BorderRadius.circular(10.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
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
                        width: 75.0,
                        height: 75.0,
                      ),
                      const SizedBox(height: 20.0),
                      const Text(
                        'Senior Connect',
                        style: TextStyle(fontSize: 16.0,
                        color: Color(0xFFFDFFFF)),
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

 
Widget notesAcessPapers(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const eventsScreen(title: 'g',)),
              );
            },
            child:  Container(
                decoration: BoxDecoration(
              color: Color(0xFF47A9A5),
              borderRadius: BorderRadius.circular(10.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
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
                        'assets/images/notes.svg',
                        width: 75.0,
                        height: 75.0,
                      ),
                      const SizedBox(height: 20.0),
                      const Text(
                        'Notes',
                        style: TextStyle(fontSize: 16.0,
                        color: Color(0xFFFDFFFF)),
                      ),
                    ],
                  ),
                ),
              ),
            
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const eventsScreen(title: 'h',)),
              );
            },
            child:  Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(const Radius.circular(15)),
                  color: Color(0xFF47A9A5),
                  boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),]
                  
                ),
                
                child: Container(
                  
                  width: 140.0,
                  height: 140.0,
                  child: Column(
                    
                    
                    children: [
                      myPadding(),
                      SvgPicture.asset(
                        'assets/images/access_papers.svg',
                        width: 75.0,
                        height: 75.0,
                      ),
                      const SizedBox(height: 20.0),
                      const Text(
                        'Access Papers',
                        style: TextStyle(fontSize: 16.0,
                        color: Color(0xFFFDFFFF)),
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
  Padding StudyToolsText() {
    return const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Study Tools',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
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
            color: Color(0xFF47A9A5),
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
            color: Color(0xFF47A9A5),
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
            color: Color(0xFF47A9A5),
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
}
