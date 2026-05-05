import 'package:flutter/material.dart';
import 'package:hitung_angka/data/local_storage.dart';
import 'package:hitung_angka/views/widgets/s_text.dart';

class SResult extends StatefulWidget {
  const SResult({super.key});

  @override
  State<SResult> createState() => _SResultState();
}

class _SResultState extends State<SResult> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SText(massage: "hasil:"),
          SText(massage: LocalStorage.number.toString(), size: 96,),
        ],
      ),
    );
  }
}