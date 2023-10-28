import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:unipedia/pages/home.dart';
import 'package:unipedia/pages/ChemSemNotes1.dart';
class ChemStudyMaterial extends StatelessWidget {
  const ChemStudyMaterial({super.key});

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
      )),
    );
  }

  Padding SelectSemText() {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Text(
        'Select You Semester',
        style: TextStyle(
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
          color: const Color(0xFF47A9A5),
          child: ListTile(
            title: const Text('Semester 1'),
            trailing: SvgPicture.asset(
              'assets/images/notes.svg',
              height: 32.0,
              width: 32.0,
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
          color: const Color(0xFF47A9A5),
          child: ListTile(
            title: const Text('Semester 2'),
            trailing: SvgPicture.asset(
              'assets/images/notes.svg',
              height: 32.0,
              width: 32.0,
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
            MaterialPageRoute(builder: (context) => const HomePage()),
          );
        },
        child: Material(
          borderRadius: BorderRadius.circular(10.0),
          color: const Color(0xFF47A9A5),
          child: ListTile(
            title: const Text('Semester 3'),
            trailing: SvgPicture.asset(
              'assets/images/notes.svg',
              height: 32.0,
              width: 32.0,
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
          color: const Color(0xFF47A9A5),
          child: ListTile(
            title: const Text('Semester 4'),
            trailing: SvgPicture.asset(
              'assets/images/notes.svg',
              height: 32.0,
              width: 32.0,
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
          color: const Color(0xFF47A9A5),
          child: ListTile(
            title: const Text('Semester 5'),
            trailing: SvgPicture.asset(
              'assets/images/notes.svg',
              height: 32.0,
              width: 32.0,
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
          color: const Color(0xFF47A9A5),
          child: ListTile(
            title: const Text('Semester 6'),
            trailing: SvgPicture.asset(
              'assets/images/notes.svg',
              height: 32.0,
              width: 32.0,
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
          color: const Color(0xFF47A9A5),
          child: ListTile(
            title: const Text('Semester 7'),
            trailing: SvgPicture.asset(
              'assets/images/notes.svg',
              height: 32.0,
              width: 32.0,
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
          color: const Color(0xFF47A9A5),
          child: ListTile(
            title: const Text('Semester 8'),
            trailing: SvgPicture.asset(
              'assets/images/notes.svg',
              height: 32.0,
              width: 32.0,
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
          color: const Color(0xFF47A9A5),
          child: ListTile(
            title: const Text('Semester 9'),
            trailing: SvgPicture.asset(
              'assets/images/notes.svg',
              height: 32.0,
              width: 32.0,
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
          color: const Color(0xFF47A9A5),
          child: ListTile(
            title: const Text('Semester 10'),
            trailing: SvgPicture.asset(
              'assets/images/notes.svg',
              height: 32.0,
              width: 32.0,
            ),
          ),
        ),
      ),
    );
  }
  SizedBox myPadding() => const SizedBox(height: 16.0);
}  
