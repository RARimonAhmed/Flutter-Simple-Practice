import 'package:flutter/material.dart';

class BodyWidget extends StatefulWidget {
  String headerText, text;
  BodyWidget({super.key, required this.headerText, required this.text});

  @override
  State<BodyWidget> createState() => _BodyWidgetState();
}

class _BodyWidgetState extends State<BodyWidget> {
  // DefaultText defaultText = new DefaultText();

  bool readMorebtn = false;

  @override
  Widget build(BuildContext context) {
    String text = widget.text;
    final lines = readMorebtn ? text.length : 10;

    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("images/rr.jpg"), fit: BoxFit.cover),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 20, top: 5, right: 20, bottom: 5),
        child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "About ${widget.headerText}",
                  style: const TextStyle(
                    fontFamily: "Rubik-Regular",
                    fontWeight: FontWeight.normal,
                    fontSize: 28,
                    color: Color.fromARGB(255, 156, 65, 65),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              text,
              maxLines: lines,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 15,
                color: Color.fromARGB(255, 251, 253, 253),
              ),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  readMorebtn = !readMorebtn;
                });
              },
              child: Text(readMorebtn ? "See less" : "See more"),
            ),
          ],
        ),
      ),
    );
  }
}
