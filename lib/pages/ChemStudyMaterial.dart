import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:unipedia/pages/home.dart';
import 'package:unipedia/pages/ChemSemNotes1.dart';
import 'package:unipedia/pages/ChemSemNotes3.dart';
class ChemStudyMaterial extends StatelessWidget {
  const ChemStudyMaterial({super.key});

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
                    color: Color(0XFFA233C5)
              ),
              child: Column(
                children: [
                  SelectSemText(),
                  myPadding(),
                  const Semester1(),
                  myPadding(),
                  const Semester2(),
                  myPadding(),
                  const Semester3(),
                  myPadding(),
                  const Semester4(),
                  myPadding(),
                  const Semester5(),
                  myPadding(),
                  const Semester6(),
                  myPadding(),
                  const Semester7(),
                  myPadding(),
                  const Semester8(),
                  myPadding(),
                  const Semester9(),
                  myPadding(),
                  const Semester10(),
                  myPadding(),
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }

  Padding SelectSemText() {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Text(
        'Select You Semester',
        style: TextStyle(
          color: Colors.white,
          fontSize: 26.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  SizedBox myPadding() => const SizedBox(height: 16.0);
}

class Semester1 extends StatelessWidget {
  const Semester1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ChemSem1Notes()),
          );
        },
        child: Material(
          borderRadius: BorderRadius.circular(10.0),
          color: const Color(0XFFD07AEB),
          child: ListTile(
            title: const Text('Semester 1', style: TextStyle(
                      color: Color(0xFFFDFFFF),
                      fontWeight: FontWeight.w500
                    )
            ),
            trailing: const Icon(
              Icons.arrow_forward,
              color: Colors.white, // Set the color of the icon
            ),
          ),
        ),
      ),
    );
  }
  
}
class Semester2 extends StatelessWidget {
  const Semester2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const HomePage()),
          );
        },
        child: Material(
          borderRadius: BorderRadius.circular(10.0),
          color: const Color(0XFFD07AEB),
          child: ListTile(
            title: const Text('Semester 2', style: TextStyle(
                      color: Color(0xFFFDFFFF),
                      fontWeight: FontWeight.w500
                    )),
            trailing: const Icon(
              Icons.arrow_forward,
              color: Colors.white, // Set the color of the icon
            ),
          ),
        ),
      ),
    );
  }
  
}
class Semester3 extends StatelessWidget {
  const Semester3({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const ChemSem3Notes()),
          );
        },
        child: Material(
          borderRadius: BorderRadius.circular(10.0),
          color: const Color(0XFFD07AEB),
          child: ListTile(
            title: const Text('Semester 3', style: TextStyle(
                      color: Color(0xFFFDFFFF),
                      fontWeight: FontWeight.w500
                    )),
            trailing: const Icon(
              Icons.arrow_forward,
              color: Colors.white, // Set the color of the icon
            ),
          ),
        ),
      ),
    );
  }
  
}
class Semester4 extends StatelessWidget {
  const Semester4({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const HomePage()),
          );
        },
        child: Material(
          borderRadius: BorderRadius.circular(10.0),
          color: const Color(0XFFD07AEB),
          child: ListTile(
            title: const Text('Semester 4', style: TextStyle(
                      color: Color(0xFFFDFFFF),
                      fontWeight: FontWeight.w500
                    )),
            trailing: const Icon(
              Icons.arrow_forward,
              color: Colors.white, // Set the color of the icon
            ),
          ),
        ),
      ),
    );
  }
  
}
class Semester5 extends StatelessWidget {
  const Semester5({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const HomePage()),
          );
        },
        child: Material(
          borderRadius: BorderRadius.circular(10.0),
          color: const Color(0XFFD07AEB),
          child: ListTile(
            title: const Text('Semester 5', style: TextStyle(
                      color: Color(0xFFFDFFFF),
                      fontWeight: FontWeight.w500
                    )),
            trailing: const Icon(
              Icons.arrow_forward,
              color: Colors.white, // Set the color of the icon
            ),
          ),
        ),
      ),
    );
  }
  
}
class Semester6 extends StatelessWidget {
  const Semester6({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const HomePage()),
          );
        },
        child: Material(
          borderRadius: BorderRadius.circular(10.0),
          color: const Color(0XFFD07AEB),
          child: ListTile(
            title: const Text('Semester 6', style: TextStyle(
                      color: Color(0xFFFDFFFF),
                      fontWeight: FontWeight.w500
                    )),
            trailing: const Icon(
              Icons.arrow_forward,
              color: Colors.white, // Set the color of the icon
            ),
          ),
        ),
      ),
    );
  }
  
}
class Semester7 extends StatelessWidget {
  const Semester7({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const HomePage()),
          );
        },
        child: Material(
          borderRadius: BorderRadius.circular(10.0),
          color: const Color(0XFFD07AEB),
          child: ListTile(
            title: const Text('Semester 7', style: TextStyle(
                      color: Color(0xFFFDFFFF),
                      fontWeight: FontWeight.w500
                    )),
            trailing: const Icon(
              Icons.arrow_forward,
              color: Colors.white, // Set the color of the icon
            ),
          ),
        ),
      ),
    );
  }
}
class Semester8 extends StatelessWidget {
  const Semester8({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const HomePage()),
          );
        },
        child: Material(
          borderRadius: BorderRadius.circular(10.0),
          color: const Color(0XFFD07AEB),
          child: ListTile(
            title: const Text('Semester 8', style: TextStyle(
                      color: Color(0xFFFDFFFF),
                      fontWeight: FontWeight.w500
                    )),
            trailing: const Icon(
              Icons.arrow_forward,
              color: Colors.white, // Set the color of the icon
            ),
          ),
        ),
      ),
    );
  }
  
}
class Semester9 extends StatelessWidget {
  const Semester9({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const HomePage()),
          );
        },
        child: Material(
          borderRadius: BorderRadius.circular(10.0),
          color: const Color(0XFFD07AEB),
          child: ListTile(
            title: const Text('Semester 9', style: TextStyle(
                      color: Color(0xFFFDFFFF),
                      fontWeight: FontWeight.w500
                    )),
            trailing: const Icon(
              Icons.arrow_forward,
              color: Colors.white, // Set the color of the icon
            ),
          ),
        ),
      ),
    );
  }
}
class Semester10 extends StatelessWidget {
  const Semester10({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const HomePage()),
          );
        },
        child: Material(
          borderRadius: BorderRadius.circular(10.0),
          color: const Color(0XFFD07AEB),
          child: ListTile(
            title: const Text('Semester 10', style: TextStyle(
                      color: Color(0xFFFDFFFF),
                      fontWeight: FontWeight.w500
                    )),
            trailing: const Icon(
              Icons.arrow_forward,
              color: Colors.white, // Set the color of the icon
            ),
          ),
        ),
      ),
    );
  }
  SizedBox myPadding() => const SizedBox(height: 16.0);
}  
