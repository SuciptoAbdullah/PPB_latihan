import 'package:flutter/material.dart';
import 'package:hitung_angka/data/local_storage.dart';


import 's_text.dart';
import 's_operator_button.dart';

class SInputNumber extends StatefulWidget {
  const SInputNumber({super.key});

  @override
  State<SInputNumber> createState() => _SInputNumberState();
}

class _SInputNumberState extends State<SInputNumber> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 15,
      children: [
        SText(massage: "masukan nilai angka"),
        SText(massage: LocalStorage.number.toString(), size: 96),
        SOperatorButton(state: this)
      ]
    );
  }
}