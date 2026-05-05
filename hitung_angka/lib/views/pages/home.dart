import 'package:flutter/material.dart';
import 'package:hitung_angka/data/local_storage.dart';
import 'package:hitung_angka/views/pages/result.dart';
import 'package:hitung_angka/views/widgets/s_input_number.dart';

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
            child: FutureBuilder(
              future: LocalStorage.getNumber(),
              builder: (context, snapshot){
              if(snapshot.connectionState == ConnectionState.waiting){
                return Text('loading...');
              }
              if(snapshot.hasError){
                return Text('error');
              }
              return SInputNumber();
            })
            )
          ),
        ),
        floatingActionButton: FloatingActionButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => Result(result: LocalStorage.number,)));
        },
        child: Icon(Icons.next_week_rounded),
        ),
      );
  }
}