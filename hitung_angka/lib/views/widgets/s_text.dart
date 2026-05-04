import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SText extends StatefulWidget {
  String massage;
  double size;
  Color color;
  TextAlign textAlign;
  SText({super.key, required this.massage, this.size = 24, this.color = Colors.white, this.textAlign = TextAlign.center});

  @override
  State<SText> createState() => _STextState();
}

class _STextState extends State<SText> {
  @override
  Widget build(BuildContext context) {
    return Text(widget.massage, style: TextStyle(fontSize: widget.size, color: widget.color), textAlign: widget.textAlign);
  }
}