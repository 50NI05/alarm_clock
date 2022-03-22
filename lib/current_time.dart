import 'package:flutter/material.dart';

import 'function.dart';

class CurrentTime extends StatefulWidget {
  const CurrentTime({ Key? key }) : super(key: key);

  @override
  State<CurrentTime> createState() => _CurrentTimeState();
}

class _CurrentTimeState extends State<CurrentTime> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('Hour: '),
        Container(
        height: 40,
        width: 60,
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color: Colors.blue,
          borderRadius: BorderRadius.circular(11)),
          child: Center(
            child: Text(
              hourNow(),
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 20,
                color: Colors.white
              ),
            )
          ),
        ),
        const SizedBox(width: 20),
        const Text('Minute: '),
        Container(
        height: 40,
        width: 60,
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color: Colors.blue,
          borderRadius: BorderRadius.circular(11)),
          child: Center(
            child: Text(
              minuteNow(),
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 20,
                color: Colors.white
              ),
            ),
            // child: TextField(
            //   controller: minuteController,
            //   keyboardType: TextInputType.number,
            //   textAlign: TextAlign.center,
            // ),
          ),
        ),
      ],
    );
  }
}