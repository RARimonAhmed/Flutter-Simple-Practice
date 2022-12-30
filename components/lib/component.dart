// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class RoundedButton extends StatefulWidget {
  String txt;
  VoidCallback ontap;
  RoundedButton({
    Key? key,
    required this.txt,
    required this.ontap,
  }) : super(key: key);

  @override
  State<RoundedButton> createState() => _RoundedButtonState();
}

class _RoundedButtonState extends State<RoundedButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: InkWell(
        onTap: widget.ontap,
        child: Container(
          height: 25,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.green.shade600,
          ),
          child: Text(
            widget.txt,
            style: TextStyle(
              color: Colors.pink.shade600,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
