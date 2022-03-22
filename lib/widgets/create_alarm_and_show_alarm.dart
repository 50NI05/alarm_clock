import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_alarm_clock/flutter_alarm_clock.dart';
import 'package:test_alarm/function.dart';

class CreateAndShowAlarm extends StatefulWidget {
  const CreateAndShowAlarm({ Key? key }) : super(key: key);

  @override
  State<CreateAndShowAlarm> createState() => _CreateAndShowAlarmState();
}

class _CreateAndShowAlarmState extends State<CreateAndShowAlarm> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.alarm_add_rounded, size: 30,),
              CupertinoButton(
                child: const Text(
                'Create alarm',
                style: TextStyle(fontSize: 20.0),
                ),
                onPressed: () async{
                  setAlarm();
                },
              ),
            ],
          )
        ),
        ElevatedButton(
          onPressed: () {
            // show alarm
            FlutterAlarmClock.showAlarms();
          },
          child: const Text(
            'Show Alarms',
            style: TextStyle(fontSize: 20.0),
          ),
        ),
        // Container(
        //   margin: const EdgeInsets.all(25),
        //   child: TextButton(
        //     child: const Text(
        //       'Create timer',
        //       style: TextStyle(fontSize: 20.0),
        //     ),
        //     onPressed: () {
        //       int minutes;
        //       minutes = int.parse(minuteNow());
        //       // create timer
        //       FlutterAlarmClock.createTimer(minutes);
        //       showDialog(
        //         context: context,
        //         builder: (context) {
        //         return const AboutDialog(
        //           children: [
        //           Center(
        //             child: Text("Timer is set",
        //               style: TextStyle(
        //                 fontSize: 20, fontWeight: FontWeight.bold)),
        //           )
        //           ],
        //         );
        //         });
        //     }
        //   ),
        // ),
        // ElevatedButton(
        //   onPressed: () {
        //     // show timers
        //     FlutterAlarmClock.showTimers();
        //   },
        //   child: const Text(
        //     "Show Timers",
        //     style: TextStyle(fontSize: 17),
        //   ),
        // )
      ],
    );
  }
}