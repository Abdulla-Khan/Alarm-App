import 'package:flutter/material.dart';
import 'package:flutter_alarm_clock/flutter_alarm_clock.dart';

class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);
  TextEditingController hourController = TextEditingController();
  TextEditingController minuteController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(children: <Widget>[
      SizedBox(height: 30),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 40,
            width: 60,
            decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: Colors.yellow,
                borderRadius: BorderRadius.circular(11)),
            child: Center(
              child: TextField(
                controller: hourController,
                keyboardType: TextInputType.number,
              ),
            ),
          ),
          SizedBox(width: 20),
          Container(
            height: 40,
            width: 60,
            decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: Colors.yellow,
                borderRadius: BorderRadius.circular(11)),
            child: Center(
              child: TextField(
                controller: minuteController,
                keyboardType: TextInputType.number,
              ),
            ),
          ),
        ],
      ),
      Container(
        margin: const EdgeInsets.all(25),
        child: TextButton(
          child: const Text(
            'Create alarm',
            style: TextStyle(fontSize: 20.0),
          ),
          onPressed: () {
            int hour;
            int minutes;
            hour = int.parse(hourController.text);
            minutes = int.parse(minuteController.text);
            FlutterAlarmClock.createAlarm(hour, minutes);
          },
        ),
      )
    ])));
  }
}
