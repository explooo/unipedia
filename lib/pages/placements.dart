import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PlacementsScreen extends StatelessWidget {
  const PlacementsScreen({super.key});

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
          body:SingleChildScrollView (
             child:Column(
              children: [
                myPadding(),
                
              ],
             )

          ),
    );
    
  }
  SizedBox myPadding() => const SizedBox(height: 16.0);
}