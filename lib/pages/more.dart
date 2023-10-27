import 'package:flutter/material.dart';
class moreScreen extends StatelessWidget {
  const moreScreen({Key? key, required this.title}) : super(key: key);
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
          onPressed: () {
            moreModalSheet(context);
          },
          child: const Text('Open Modal Bottom Sheet'),
        ),
      ),
    );
  } SizedBox myPadding() => const SizedBox(height: 16.0);

  Future<dynamic> moreModalSheet(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      showDragHandle: true,
      builder: (BuildContext context) {
        return SizedBox(
          height: 150,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox.fromSize(
                              size: const Size(56, 56),
                              child: ClipOval(
                                child: Material(
                                  color: const Color(0xFF71CDCA),
                                  child: InkWell(
                                    splashColor: Colors.green,
                                    onTap: () {},
                                    child: const Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                        Icon(Icons.contact_page), // <-- Icon
                                        Text("info"), // <-- Text
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox.fromSize(
                              size: const Size(56, 56),
                              child: ClipOval(
                                child: Material(
                                  color: const Color(0xFF71CDCA),
                                  child: InkWell(
                                    splashColor: Colors.green,
                                    onTap: () {},
                                    child: const Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                        Icon(Icons.share), // <-- Icon
                                        Text("Share"), // <-- Text
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox.fromSize(
                              size: const Size(56, 56),
                              child: ClipOval(
                                child: Material(
                                  color: const Color(0xFF71CDCA),
                                  child: InkWell(
                                    splashColor: Colors.green,
                                    onTap: () {},
                                    child: const Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                        Icon(Icons.monetization_on), // <-- Icon
                                        Text("Ads" ), // <-- Text
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                // Add more Padding widgets here
              ],
            ),
          ),
        );
      },
    );
  }
}
