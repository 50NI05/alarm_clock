import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_alarm_clock/flutter_alarm_clock.dart';

String hourNow(){
  DateTime now = DateTime.now();

  return now.hour.toString();
}

String minuteNow(){
  DateTime now = DateTime.now();

  return now.minute.toString();
}

TextEditingController hourController = TextEditingController();
TextEditingController minuteController = TextEditingController();
TextEditingController timerController = TextEditingController();

Timer? timer;

Future setAlarm() async {
    // SharedPreferences prefs = await SharedPreferences.getInstance();

    // dynamic variable = prefs.setString('hourController', hourController.text);
    // dynamic variable2 = prefs.getString('hourController');

    // dynamic variable3 = prefs.setString('minuteController', minuteController.text);
    // dynamic variable4 = prefs.getString('minuteController');

    int hour;
    int minutes;
    
    // hour = int.parse(hourController.text);
    // minutes = int.parse(minuteController.text);

    // creating alarm after converting hour
    // and minute into integer
    // Future.delayed(const Duration(seconds: 60), (){
    //   FlutterAlarmClock.createAlarm(hour, minutes);
    // });

    hour = int.parse(hourNow());
    minutes = int.parse(minuteNow());

    FlutterAlarmClock.createAlarm(hour, minutes);

    timer = Timer.periodic(
      Duration(minutes: int.parse(timerController.text)), 
      (timer) {
        hour = int.parse(hourNow());
        minutes = int.parse(minuteNow());

        FlutterAlarmClock.createAlarm(hour, minutes);
      }
    );
  }