// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:hitung_angka/data/local_storage.dart';

import 's_button.dart';

class SOperatorButton extends StatefulWidget {
  State state;
  SOperatorButton({super.key, required this.state});

  @override
  State<SOperatorButton> createState() => _SOperatorButtonState();
}

class _SOperatorButtonState extends State<SOperatorButton> {

  void subtract(){
    widget.state.setState(() {
      LocalStorage.add(-1);
    });
  }

  void addition(){
    widget.state.setState(() {
      LocalStorage.add(1);
    });
  }

  void reset(){
    widget.state.setState(() {
      LocalStorage.set(0);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      children: [
        Row(
          spacing: 20,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SButton(onPressed: subtract, child: Icon(Icons.remove)),
            SButton(onPressed: addition, child: Icon(Icons.add))
          ],
        ),
        SButton(onPressed: reset, child: Icon(Icons.restore))
      ],
    );
  }
}