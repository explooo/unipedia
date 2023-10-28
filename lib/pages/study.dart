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
            DepartmentsText(),
            myPadding(),
            ChemistryDropDown(context),
            myPadding(),
            CetDropDown(),
            myPadding(),
            AgriDropDown(),
          ],
        ),
      ),
    );
  }

  Widget ChemistryDropDown(BuildContext context) {
    return ExpansionTile(
            title: Row(
              children: [
                SvgPicture.asset(
                  'assets/images/senior_connect.svg',
                  height: 32.0,
                  width: 32.0,
                ),
                
                const SizedBox(width: 8.0),
                const Text(
                  'Chemistry',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFFDFFFF),
                  ),
                ),
                
              ],
            ),
            children: [
              ListTile(
                title: const Text('Study Material'),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ChemStudyMaterial(),
                      ),
                    );
                },
              ),
              ListTile(
                title: const Text('Placements'),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PlacementsScreen(),
                      ),
                    );
                  // Handle Placements option
                },
              ),
            ],
          );
  }

 ExpansionTile CetDropDown() {
    return ExpansionTile(
            title: Row(
              children: [
                SvgPicture.asset(
                  'assets/images/senior_connect.svg',
                  height: 32.0,
                  width: 32.0,
                ),
                
                const SizedBox(width: 8.0),
                const Text(
                  'CET',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFFDFFFF),
                  ),
                ),
                
              ],
            ),
            children: [
              ListTile(
                title: const Text('Study Material'),
                onTap: () {
                  // Handle Study Material option
                },
              ),
              ListTile(
                title: const Text('Placements'),
                onTap: () {
                  // Handle Placements option
                },
              ),
            ],
          );
  }
  ExpansionTile AgriDropDown() {
    return ExpansionTile(
            title: Row(
              children: [
                SvgPicture.asset(
                  'assets/images/senior_connect.svg',
                  height: 32.0,
                  width: 32.0,
                ),
                
                const SizedBox(width: 8.0),
                const Text(
                  'Agriculture',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFFDFFFF),
                  ),
                ),
                
              ],
            ),
            children: [
              ListTile(
                title: const Text('Study Material'),
                onTap: () {
                  // Handle Study Material option
                },
              ),
              ListTile(
                title: const Text('Placements'),
                onTap: () {
                  // Handle Placements option
                },
              ),
            ],
          );
  }
}

  SizedBox myPadding() => const SizedBox(height: 16.0);


Padding DepartmentsText() {
    return const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Departments',
              style: TextStyle(
                fontSize: 26.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          );
  }