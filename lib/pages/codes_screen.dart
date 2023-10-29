import 'package:flutter/material.dart';
import 'package:unipedia/pages/home.dart';
import 'package:unipedia/pages/ChemSemNotes1.dart';
import 'package:unipedia/pages/ChemSemNotes3.dart';
class CodesScreen extends StatelessWidget {
  const CodesScreen({super.key});

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
                  SoaAText(),
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
                  


                ],
              ),
            ),
          ),
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
                SoaBText(),
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

  Padding SoaAText() {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Text(
        'SOR-A',
        style: TextStyle(
          color: Colors.white,
          fontSize: 26.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

Padding SoaBText() {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Text(
        'SOR-B',
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
            title: const Text('Supra Notes PDF Bundle 2 (97160(A-14))', style: TextStyle(
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
            title: const Text('Supra Notes PDF Bundle No. 2 (97161(A-12))', style: TextStyle(
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
            title: const Text('Supra Notes PDF Bundle No. 3 (97162(A-9))', style: TextStyle(
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
            title: const Text('Supra Notes PDF Bundle No. 3.1 (97163(A-17))', style: TextStyle(
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
            title: const Text('Supra Bundles 3.4 (97164(A-29))', style: TextStyle(
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
            title: const Text('Supra Bundles 3.3 (91765 (A-18))', style: TextStyle(
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
            title: const Text('Supra Bundles 3.2 (97166 (A-12))', style: TextStyle(
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
            title: const Text('Supramolecular Chemistry Chapter 3.1 (97167(A-12))', style: TextStyle(
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
            title: const Text('Supramolecular Chemistry Chapter 2.2 (97168(A-18))', style: TextStyle(
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
            title: const Text('Supramolecular Chemistry Chapter 2.1 (97169 (A-8))', style: TextStyle(
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

class Semester11 extends StatelessWidget {
  const Semester11({
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
            title: const Text('Supra Notes PDF Bundle 2 (97160(A-14))', style: TextStyle(
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