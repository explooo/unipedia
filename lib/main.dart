import 'package:flutter/material.dart';
import 'package:unipedia/pages/events.dart';
import 'package:unipedia/pages/home.dart';
import 'package:unipedia/pages/more.dart';
import 'package:firebase_core/firebase_core.dart';
import '/src/firebase_options.dart';
import 'package:unipedia/pages/study.dart';
// import 'package:unipedia/pages/firebase_options.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int selectedPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Poppins',
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          
          body: SelectedIndexPage[selectedPageIndex],
          bottomNavigationBar: MyNavBar()
          ),
    );
  }

  NavigationBar MyNavBar() {
    return NavigationBar(
          backgroundColor: const Color(0xFFF6E0FD),
          selectedIndex: selectedPageIndex,
          onDestinationSelected: (int index) {
            setState(() {
              selectedPageIndex = index;
            });
          },
          indicatorColor: Color('A233C5'.hashCode),
          destinations: const <Widget>[
            NavigationDestination(
              selectedIcon: Icon(Icons.home),
              icon: Icon(Icons.home_outlined),
              label: 'Home',
            ),
            NavigationDestination(
              icon: Icon(Icons.notes),
              label: 'Notes',
            ),
            NavigationDestination(
              selectedIcon: Icon(Icons.event),
              icon: Icon(Icons.event_note_outlined),
              label: 'Events',
            ),
            NavigationDestination(
              icon: Icon(Icons.more_horiz),
              label: 'More',
            ),
          ],
        );
  }

  List<StatelessWidget> get SelectedIndexPage {
    return const [
          HomePage(),
          Study(
           
          ),
          eventsScreen(title: "Events"),
          moreScreen(title: 'More')
        ];
  }

  // ignore: non_constant_identifier_names
}
