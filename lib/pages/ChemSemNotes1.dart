import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:unipedia/pages/events.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:unipedia/pages/codes_screen.dart';
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
          leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white,),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        ),
        backgroundColor: const Color(0xFFD1F8F7),
        body: SingleChildScrollView(
            child: Column(
          children: [
            myPadding(),
            SelectYourContent(),
            myPadding(),
            // NotesCard(),
            GestureDetector(
      onTap: ()  {
                Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => CodesScreen()),
          );
              },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          height: 124.0,
          child: Card(
            child: Center(
              child: ListTile(
                title: Text('Codes'),
                trailing: SvgPicture.asset(
                  'assets/images/notes.svg',
                  height: 32.0,
                  width: 32.0,
                ),
              ),
            ),
          ),
        ),
      ),
    ),
            PyqCard(),
            SolutionsCard(),
            myPadding(),
          ],
        )));
  }

  GestureDetector NotessCard() {
    return GestureDetector(
      onTap: () async {
                const url = 'https://example.com';
                if (await canLaunch(url)) {
                  await launch(url);
                } else {
                  throw 'Could not launch $url';
                }
              },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          height: 124.0,
          child: Card(
            child: Center(
              child: ListTile(
                title: Text('Notes'),
                trailing: SvgPicture.asset(
                  'assets/images/notes.svg',
                  height: 32.0,
                  width: 32.0,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  GestureDetector CodesCard() {
    return GestureDetector(
      onTap: ()  {
                
              },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          height: 124.0,
          child: Card(
            child: Center(
              child: ListTile(
                title: Text('Codes'),
                trailing: SvgPicture.asset(
                  'assets/images/notes.svg',
                  height: 32.0,
                  width: 32.0,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  GestureDetector PyqCard() {
    return GestureDetector(
      onTap: () async {
                const url = 'https://example.com';
                if (await canLaunch(url)) {
                  await launch(url);
                } else {
                  throw 'Could not launch $url';
                }
              },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          height: 124.0,
          child: Card(
            child: Center(
              child: ListTile(
                title: Text('Previous Year Questions'),
                trailing: SvgPicture.asset(
                  'assets/images/notes.svg',
                  height: 32.0,
                  width: 32.0,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  GestureDetector SolutionsCard() {
    return GestureDetector(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          height: 124.0,
          child: Card(
            child: Center(
              child: ListTile(
                title: Text('Solved Papers'),
                trailing: SvgPicture.asset(
                  'assets/images/notes.svg',
                  height: 32.0,
                  width: 32.0,
                ),
              ),
            ),
          ),
        ),
      ),
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
