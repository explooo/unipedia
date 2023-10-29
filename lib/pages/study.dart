// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:unipedia/pages/placements.dart';
import 'package:unipedia/pages/ChemStudyMaterial.dart';

class Study extends StatelessWidget {
  const Study({Key? key}) : super(key: key);

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
          ),
      // backgroundColor: const Color(0xFFD1F8F7),
      body: SingleChildScrollView(
        child: Column(
          children: [
            myPadding(),
            
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.0),
                  color: Color(0XFFA233C5)
                ),
                child: Column(
                  
                  children: [
                    myPadding(),
                    DepartmentsText(),
                    myPadding(),
                    ChemistryDropDown(context),
                    myPadding(),
                    CetDropDown(context),
                    myPadding(),
                    AgriDropDown(context),
                    myPadding(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }


  Widget ChemistryDropDown(BuildContext context) {
    return Padding(
      
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.0),
          color: Color(0XFFD07AEB),
        ),
        
        child: ExpansionTile(
                
                title: Row(
                  children: [
                    SvgPicture.asset(
                      'assets/images/chemistry_icon.svg',
                      height: 32.0,
                      width: 32.0,
                    ),
                    
                    const SizedBox(width: 8.0),
                    const Text(
                      'Chemistry',
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFFFDFFFF),
                      ),
                    ),
                    
                  ],
                ),
                children: [
                  ListTile(
                    title: const Text('Study Material'
                    ,style: TextStyle(
                      color: Color(0xFFFDFFFF)
                    ),),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ChemStudyMaterial(),
                          ),
                        );
                    },
                  ),
                  ListTile(
                    title: const Text('Placements'
                    ,style: TextStyle(
                      color: Color(0xFFFDFFFF)
                    ),),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const PlacementsScreen(),
                          ),
                        );
                      // Handle Placements option
                    },
                  ),
                ],
              ),
      ),
    );
  }


 Widget CetDropDown(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.0),
          color: Color(0XFFD07AEB),
        ),
        child: ExpansionTile(
                title: Row(
                  children: [
                    SvgPicture.asset(
                      'assets/images/cet_icon.svg',
                      height: 32.0,
                      width: 32.0,
                    ),
                    
                    const SizedBox(width: 8.0),
                    const Text(
                      'CET',
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFFFDFFFF),
                      ),
                    ),
                    
                  ],
                ),
                children: [
                  ListTile(
                    title: const Text('Study Material'
                    ,style: TextStyle(
                      color: Color(0xFFFDFFFF)
                    ),),
                    onTap: () {
                      // Handle Study Material option
                    },
                  ),
                  ListTile(
                    title: const Text('Placements'
                    ,style: TextStyle(
                      color: Color(0xFFFDFFFF)
                    ),),
                    onTap: () {
                      // Handle Placements option
                    },
                  ),
                ],
              ),
      ),
    );
  }
  Widget AgriDropDown(BuildContext context){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.0),
            color: Color(0XFFD07AEB),
          ),
        child: ExpansionTile(
                title: Row(
                  children: [
                    SvgPicture.asset(
                      'assets/images/agri_icon.svg',
                      height: 32.0,
                      width: 32.0,
                    ),
                    
                    const SizedBox(width: 16.0),
                    const Text(
                      'Agriculture',
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFFFDFFFF),
                      ),
                    ),
                    
                  ],
                ),
                children: [
                  ListTile(
                    title: const Text('Study Material', style: TextStyle(
                      color: Color(0xFFFDFFFF)
                    ),),
                    onTap: () {
                      // Handle Study Material option
                    },
                  ),
                  ListTile(
                    title: const Text('Placements',
                    style: TextStyle(
                      color: Color(0xFFFDFFFF)
                    ),),
                    onTap: () {
                      // Handle Placements option
                    },
                  ),
                ],
              ),
      ),
    );
  }
}

  SizedBox myPadding() => const SizedBox(height: 16.0);


Row DepartmentsText() {
    return  Row(
            // padding: EdgeInsets.all(16.0),
            children: [
              const SizedBox(width: 16.0),
              Text(
                'Select Your Department',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                  fontSize: 26,
                  // fontWeight: FontWeight.w400,
                ),
              ),
            ],
          );
  }