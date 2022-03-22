import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_alarm_clock/flutter_alarm_clock.dart';
import 'package:intl/intl.dart';
import 'package:test_alarm/widgets/create_alarm_and_show_alarm.dart';
import 'package:test_alarm/current_time.dart';
import 'package:test_alarm/widgets/create_alarm_with_timer.dart';

import '../function.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  late String _timeString;

  @override
  void initState() {
    _timeString = _formatDateTime(DateTime.now());
    Timer.periodic(const Duration(seconds: 1), (Timer t) => _getTime());
    super.initState();
  }

  void _getTime() {
    final DateTime now = DateTime.now();
    final String formattedDateTime = _formatDateTime(now);
    setState(() {
      _timeString = formattedDateTime;
    });
  }

  String _formatDateTime(DateTime dateTime) {
    return DateFormat('dd/MM/yyyy hh:mm:ss').format(dateTime);
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: const Text('Test Alarm'),
      centerTitle: true,
    ),
    body: Center(
      child: Column(
        children: <Widget>[
        const SizedBox(height: 30),
        Center(
          child: Text(_timeString),
        ),
        const SizedBox(height: 30),
        const CurrentTime(),
        const SizedBox(height: 10.0,),
        const CreateAlarmWithTimer(),
        const CreateAndShowAlarm()
        ]
      )
    ),
    );
  }
}