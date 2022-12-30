import 'package:class_22/Constant/mytext.dart';
import 'package:class_22/Widgets/DrawarWidget.dart';
import 'package:class_22/Widgets/IconsWidget.dart';
import 'package:class_22/Widgets/bodyWidgets.dart';
import 'package:flutter/material.dart';

class ContainerWidgets extends StatefulWidget {
  ContainerWidgets({super.key});
  DefaultText defaultText = new DefaultText();

  @override
  State<ContainerWidgets> createState() => _ContainerWidgetsState();
}

class _ContainerWidgetsState extends State<ContainerWidgets> {
  late IconWidget iconWidget;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawar(),
      body: BodyWidget(
          headerText: widget.defaultText.headerText,
          text: widget.defaultText.bodyText),
    );
  }
}
