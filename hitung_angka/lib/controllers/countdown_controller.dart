// ignore_for_file: prefer_final_fields

import 'dart:async';
class CountdownController {
  int _seconds;
  Timer? _timer;

  Function(int)? onTick;
  Function()? onFinish;

  CountdownController(this._seconds);

  void start(){
    _timer?.cancel();

    _timer = Timer(Duration(seconds: 1), (){
      if(_seconds > 0){
        _seconds--;
        onTick?.call(_seconds);
      }else{
        _timer?.cancel();
        onFinish?.call();
      }
    });
  }

  void stop(){
    _timer?.cancel();
  }

  void reset(int seconds){
    _seconds = seconds;
  }

}