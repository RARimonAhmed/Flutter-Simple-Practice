import 'package:class_22/Widgets/IconsWidget.dart';
import 'package:flutter/material.dart';

class MyDrawar extends StatefulWidget {
  const MyDrawar({super.key});

  @override
  State<MyDrawar> createState() => _MyDrawarState();
}

class _MyDrawarState extends State<MyDrawar> {
  @override
  Widget build(BuildContext context) {
    var size, height, width;

    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: const Color.fromARGB(82, 167, 163, 154),
        height: height * 0.80,
        width: width * 0.35,
        child: ListView(children: [
          IconWidget(
            text: "Scaffold",
            icon: const Icon(Icons.leak_remove),
          ),
          IconWidget(
            text: "Container",
            icon: const Icon(Icons.contacts),
          ),
          IconWidget(
            text: "Raw Column",
            icon: const Icon(Icons.raw_on),
          ),
          IconWidget(
            text: "Text",
            icon: const Icon(Icons.text_fields),
          ),
          IconWidget(
            text: "Button",
            icon: const Icon(Icons.radio_button_off),
          ),
          IconWidget(
            text: "Stack",
            icon: const Icon(Icons.stacked_bar_chart),
          ),
          IconWidget(
            text: "Forms",
            icon: const Icon(Icons.format_shapes),
          ),
          IconWidget(
            text: "Alart Dialogue",
            icon: const Icon(Icons.add_alert),
          ),
        ]),
      ),
    );
  }
}
