import 'package:class_22/Constant/mytext.dart';
import 'package:class_22/Widgets/bodyWidgets.dart';
import 'package:flutter/material.dart';

class IconWidget extends StatefulWidget {
  Icon icon;
  String text;
  IconWidget({
    super.key,
    required this.text,
    required this.icon,
  });

  @override
  State<IconWidget> createState() => _IconWidgetState();
}

class _IconWidgetState extends State<IconWidget> {
  DefaultText defaultText = new DefaultText();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: (() {
              print("Press Icon");
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => BodyWidget(
                          headerText: defaultText.headerText,
                          text: defaultText.bodyText,
                        )),
              );
              print(defaultText.headerText);
            }),
            icon: Container(
              child: widget.icon,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(
                  50,
                ),
              ),
            ),
          ),
          Text(
            widget.text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 10,
            ),
          ),
        ],
      ),
    );
  }
}
