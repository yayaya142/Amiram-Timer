// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, unused_element, avoid_print, prefer_function_declarations_over_variables

import 'dart:async';
import 'package:provider/src/provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:timer/main.dart';
import 'package:timer/providers/theme.dart';
import 'package:timer/providers/counter_provider.dart';

class MyColum extends StatefulWidget {
  const MyColum({Key? key}) : super(key: key);

  @override
  State<MyColum> createState() => _MyColumState();
}

class _MyColumState extends State<MyColum> {
  Timer? _everySecond;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: Screen_size["screen_height_new"],
      width: Screen_size['screen_Width'],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: Screen_size["screen_height_new"] * 0.03),
          Text(is_timer_done_text, style: ThemeStyle().PotraitTimerDone),
          Text(context.watch<Counter>().format_time,
              style: ThemeStyle().PotraitTimerStyle),
          SizedBox(
            height: Screen_size["screen_height_new"] * 0.1,
          ),
          ElevatedButton(
            onPressed: () {
              print("screen width: $Screen_size");

              timer_counter = 120;
              timer_colors = ThemeColors().minutes_color_2!;
              context.read<Counter>().startTimer();
            },
            child: Text(
              '2 Minutes',
              style: ThemeStyle().PotraitButtonSize,
            ),
            style: ElevatedButton.styleFrom(
                primary: ThemeColors().minutes_color_2,
                shape: ThemeStyle().RoundedButtonPotrait),
          ),
          SizedBox(height: Screen_size["screen_height_new"] * 0.05),
          ElevatedButton(
            onPressed: () {
              timer_counter = 240;
              timer_colors = ThemeColors().minutes_color_4;
              context.read<Counter>().startTimer();
            },
            child: Text('4 Minutes', style: ThemeStyle().PotraitButtonSize),
            style: ElevatedButton.styleFrom(
              primary: ThemeColors().minutes_color_4,
              shape: ThemeStyle().RoundedButtonPotrait,
            ),
          ),
          SizedBox(height: Screen_size["screen_height_new"] * 0.05),
          ElevatedButton(
            onPressed: () {
              timer_counter = 420;
              timer_colors = ThemeColors().minutes_color_7;
              context.read<Counter>().startTimer();
            },
            child: Text('7 Minutes', style: ThemeStyle().PotraitButtonSize),
            style: ElevatedButton.styleFrom(
                primary: ThemeColors().minutes_color_7,
                shape: ThemeStyle().RoundedButtonPotrait),
          ),
          SizedBox(
            height: Screen_size["screen_height_new"] * 0.09,
          ),
          ElevatedButton(
            onPressed: () {
              context.read<Counter>().timer_cancel();
              timer_colors = Colors.white;
            },
            child: Text('Cancel Timer',
                style: ThemeStyle().PotraitCancelButtonSize),
            style: ElevatedButton.styleFrom(
                primary: ThemeColors().cancel_timer,
                shape: ThemeStyle().RoundedButtonPotrait),
          ),
        ],
      ),
    );
  }
}
