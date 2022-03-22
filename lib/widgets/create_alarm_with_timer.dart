import 'package:flutter/material.dart';
import 'package:test_alarm/function.dart';

class CreateAlarmWithTimer extends StatefulWidget {
  const CreateAlarmWithTimer({ Key? key }) : super(key: key);

  @override
  State<CreateAlarmWithTimer> createState() => _CreateAlarmWithTimerState();
}

class _CreateAlarmWithTimerState extends State<CreateAlarmWithTimer> {
  @override
  Widget build(BuildContext context) {
    return Padding(
          padding: const EdgeInsets.all(25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Timer: '),
              Container(
                height: 40,
                width: 60,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(11)
                ),
                child: Center(
                  child: TextField(
                    controller: timerController,
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 20,
                      color: Colors.white
                    ),
                  ),
                ),
              ),
              const Text(' Min.')
            ],
          ),
        );
  }
}