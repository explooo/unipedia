import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
// import 'package:unipedia/pages/events.dart';
import 'package:url_launcher/url_launcher.dart';

class ChemSem3Notes extends StatelessWidget {
  const ChemSem3Notes({super.key});

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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.0),
                    color: const Color(0XFFA233C5)),
                child: Column(
                  children: [
                    myPadding(),
                    SelectYourContent(),
                    myPadding(),
                    NotesCard(),
                    CodesCard(),
                    PyqCard(),
                    SolutionsCard(),
                    myPadding(),
                  ],
                ),
              ),
            ),
          ],
        )));
  }

  GestureDetector NotesCard() {
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
            color: const Color(0XFFD07AEB),
            child: Center(
              child: ListTile(
                title: const Text(
                  'Notes',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFFFDFFFF),
                  ),
                ),
                trailing: SvgPicture.asset(
                  'assets/images/chmnotes.svg',
                  height: 46.0,
                  width: 46.0,
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
            color: const Color(0XFFD07AEB),
            child: Center(
              child: ListTile(
                title: const Text(
                  'Codes',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFFFDFFFF),
                  ),
                ),
                trailing: SvgPicture.asset(
                  'assets/images/chmcodes.svg',
                  height: 46.0,
                  width: 46.0,
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
            color: const Color(0XFFD07AEB),
            child: Center(
              child: ListTile(
                title: const Text(
                  'Previous Year Questions',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFFFDFFFF),
                  ),
                ),
                trailing: SvgPicture.asset(
                  'assets/images/pyq.svg',
                  height: 46.0,
                  width: 46.0,
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
            color: const Color(0XFFD07AEB),
            child: Center(
              child: ListTile(
                title: const Text(
                  'Solved Papers',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFFFDFFFF),
                  ),
                ),
                trailing: SvgPicture.asset(
                  'assets/images/solved_papers.svg',
                  height: 46.0,
                  width: 46.0,
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
          color: Colors.white,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  SizedBox myPadding() => const SizedBox(height: 16.0);
}
