import 'package:flutter/material.dart';
import 'package:hitung_angka/controllers/countdown_controller.dart';
import 'package:hitung_angka/views/widgets/s_text.dart';

class Result extends StatefulWidget {
  final int result;
  const Result({super.key, this.result = 0});

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  int value = 3;
  
  String header = "loading...";
  
  late CountdownController countDown;

  Center? currentContent;

  @override
  void initState() {
    countDown = CountdownController(value);
    super.initState();


    countDown.onTick = (currentValue){
      setState(() {
        value = currentValue;
      });
    };

    countDown.onFinish = (){
      setState(() {
        header = "hasil:";
        value = widget.result;  
      });
    };

  }

  @override
  Widget build(BuildContext context) {
    
    countDown.start();

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SText(massage: header, color: Colors.black,),
            SText(massage: value.toString(), color: Colors.black, size: 96,)
          ],
        ),
      )
    );
  }
}