import 'package:class_22/Widgets/DrawarWidget.dart';
import 'package:class_22/Widgets/bodyWidgets.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool readMorebtn = false;
  var size, height, width;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("images/rr.jpg"), fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        drawer: const MyDrawar(),
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "Flutter Learning",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
        body: BodyWidget(
          headerText: 'Flutter',
          text:
              'Flutter is the most powerful framework is in the world right now.Because its developed by google.so its updated day by day.',
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: const Color(0xFF6200EE),
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white.withOpacity(.60),
          selectedFontSize: 14,
          unselectedFontSize: 14,
          onTap: (value) {
            // Respond to item press.
          },
          // ignore: prefer_const_literals_to_create_immutables
          items: [
            const BottomNavigationBarItem(
              label: 'Favorites',
              icon: Icon(Icons.favorite),
            ),
            const BottomNavigationBarItem(
              label: 'Music',
              icon: Icon(Icons.music_note),
            ),
            const BottomNavigationBarItem(
              label: 'Place',
              icon: Icon(Icons.location_on),
            ),
            const BottomNavigationBarItem(
              label: 'Notes',
              icon: Icon(Icons.library_books),
            ),
          ],
        ),
      ),
    );
  }
}
