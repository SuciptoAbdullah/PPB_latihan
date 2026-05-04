// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class SButton extends StatefulWidget {
  VoidCallback onPressed;
  Widget child;
  SButton({super.key, required this.onPressed, required this.child});

  @override
  State<SButton> createState() => _SButtonState();
}

class _SButtonState extends State<SButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: widget.onPressed,
      child: widget.child
      );
  }
}