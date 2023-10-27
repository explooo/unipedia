import 'package:flutter/material.dart';

class Study extends StatelessWidget {
  const Study({Key? key, required this.title}) : super(key: key);
  final String title;
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
      body: Center(
        child: TextButton(
          onPressed: () {},
          child: const Text('Open Modal Bottom Sheet'),
        ),
      ),
    );
  }

  SizedBox myPadding() => const SizedBox(height: 16.0);
}
