import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
// import 'package:unipedia/pages/events.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:unipedia/pages/codes_screen.dart';
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
            color: Color(0XFFD07AEB),
            child: Center(
              child: ListTile(
                title: Text('Codes' ,
                style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFFFDFFFF),
                  ),
                ),
                trailing: SvgPicture.asset(
                  'assets/images/notes.svg',
                  height: 46.0,
                  width: 46.0,
                ),
              ),
            ),
          ),
        ),
      ),
    ),
                    // CodesCard(),
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
        const url = 'https://drive.google.com/drive/folders/1X6Y_t5OP1ziGeYyV-XzaWP_Yl2tgnnnE?usp=sharing';
        
       
        await launch(url);
        
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
        
        const url = 'https://drive.google.com/drive/folders/18g2DcZPIVhn-VH4xhop2Q44JMq_cyJm8?usp=sharing';
        await launch(url);
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
      onTap: () async {
        const url = 'https://drive.google.com/drive/folders/1rWu3NQ9_BvivbJSzn0bE3NCDtawWBh7c?usp=sharing';
        await launch(url);
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
