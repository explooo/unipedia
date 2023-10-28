import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ChemSem1Notes extends StatelessWidget {
  const ChemSem1Notes({super.key});

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
      body: SingleChildScrollView(
          child: Column(
        children: [
          myPadding(),
          SelectYourContent(),
        ],))
          );
    
  }
  Padding SelectYourContent() {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Text(
        'Select Your Content',
        style: TextStyle(
          fontSize: 26.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
SizedBox myPadding() => const SizedBox(height: 16.0);
  }