// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:hitung_angka/views/widgets/s_text.dart';

class SLoading extends StatefulWidget {
  int countDown;
  SLoading({super.key, required this.countDown});

  @override
  State<SLoading> createState() => _SLoadingState();
}

class _SLoadingState extends State<SLoading> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SText(massage: "loading"),
          SText(massage: widget.countDown.toString(), size: 96,),
        ],
      ),
    );
  }
}