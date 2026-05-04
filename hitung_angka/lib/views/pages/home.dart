import 'package:flutter/material.dart';
import 'package:hitung_angka/data/data_number.dart';
import 'package:hitung_angka/views/pages/result.dart';
import 'package:hitung_angka/views/widgets/s_operator_button.dart';
import 'package:hitung_angka/views/widgets/s_text.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Center(
          child: Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.pink[300],
              borderRadius: BorderRadius.circular(30)
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 15,
              children: [
                SText(massage: "masukan nilai angka"),
                SText(massage: DataNumber.number.toString(), size: 96),
                SOperatorButton(state: this)
              ]
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => Result(result: DataNumber.number,) ));
      },
      child: Icon(Icons.navigate_next_rounded),
      ),
    );
  }
}