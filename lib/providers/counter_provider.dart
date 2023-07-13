// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, unused_element, avoid_print, prefer_function_declarations_over_variables

import 'dart:async';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:timer/main.dart';

// Global var
var timer_colors = Colors.white;
// time in seconds
int timer_counter = 0;
// timer state
bool is_timer_done = false;
// timer done text
String is_timer_done_text = '';
Timer? _timer;
// format time
// String format_time = '00:00';

class Counter with ChangeNotifier {
  String format_time = '00:00';

  void startTimer() {
    if (_timer != null) {
      _timer!.cancel();
    }
    is_timer_done_text = '';
    print("format time: $format_time");

    print('---- Start Timer ----');
    print(timer_counter);
    _timer = Timer.periodic(Duration(seconds: 1), (_) {
      // setState(() {
      if (timer_counter > 0) {
        timer_counter--;
        print(timer_counter);
        print(format_time);
        format_time = int_to_time(timer_counter);
        notifyListeners();
      } else {
        _timer!.cancel();
        is_timer_done = true;
        print(timer_counter);
        is_timer_done_text = 'DONE!';
        print('timer end');
        format_time = '00:00';
        // play audio
        AudioCache player = new AudioCache();
        const alarmAudioPath = "alarm.mp3";
        player.play(alarmAudioPath);
        notifyListeners();
      }
    });
    // });
  }

// seconds to time format
  int_to_time(int value) {
    int h, m, s;

    h = value ~/ 3600;
    m = ((value - h * 3600)) ~/ 60;
    s = value - (h * 3600) - (m * 60);

    String minuteLeft =
        m.toString().length < 2 ? "0" + m.toString() : m.toString();

    String secondsLeft =
        s.toString().length < 2 ? "0" + s.toString() : s.toString();

    String result = "$minuteLeft:$secondsLeft";

    return result;
  }

  timer_cancel() {
    _timer!.cancel();
    print('---- STOP TIMER ----');
    timer_counter = 0;
    Counter().format_time = '00:00';
    format_time = '00:00';
    is_timer_done = false;
    is_timer_done_text = '';
    print(timer_counter);
    notifyListeners();
  }
}
