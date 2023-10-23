import 'package:flutter/material.dart';
import 'package:unipedia/pages/events.dart';
import 'package:unipedia/pages/home.dart';
import 'package:unipedia/pages/more.dart';
import 'package:unipedia/pages/study.dart';

void main() => runApp(const MyApp());

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
      theme: ThemeData(fontFamily: 'Poppins'),
      debugShowCheckedModeBanner: false,
      home: MyAppBar(),
    );
  }

  Scaffold MyAppBar() {
    return Scaffold(
      appBar: AppBar(
      backgroundColor: Colors.transparent,

      elevation: 0,
      centerTitle: true,
      title: const Text(
        'unipedia',
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.black,
          
        ),
      ),
    ),
      body: 
      const [HomePage(),
      Study(title: 'hello',),
      eventsScreen(title: "Events"),
      moreScreen(title: 'More')][selectedPageIndex],
    
      bottomNavigationBar: NavigationBar(
        selectedIndex: selectedPageIndex,
        onDestinationSelected: (int index) {
          setState(() {
            selectedPageIndex = index;
          });
        },
        indicatorColor: Colors.amber[800],
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
      ),
     
    );
  }
}
