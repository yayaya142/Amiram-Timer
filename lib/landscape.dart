// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, unused_element, avoid_print, prefer_function_declarations_over_variables

import 'dart:async';
import 'dart:io';
import 'package:provider/src/provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:timer/main.dart';
import 'package:timer/providers/theme.dart';
import 'package:timer/providers/counter_provider.dart';

class MyRow extends StatefulWidget {
  const MyRow({Key? key}) : super(key: key);

  @override
  State<MyRow> createState() => _MyRowState();
}

class _MyRowState extends State<MyRow> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: Screen_size["screen_height_new"],
      width: Screen_size['screen_Width'],
      child: Center(
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(is_timer_done_text, style: ThemeStyle().LandScapeTimerDone),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                context.watch<Counter>().format_time,
                style: ThemeStyle().LandscapeTimerStyle,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  // remove
                  print("screen width: $Screen_size");
                  // ^^^^
                  timer_counter = 120;
                  timer_colors = ThemeColors().minutes_color_2!;

                  context.read<Counter>().startTimer();
                },
                child: Text(
                  '2 Minutes',
                  style: ThemeStyle().LandscapeButtonSize,
                ),
                style: ElevatedButton.styleFrom(
                    primary: ThemeColors().minutes_color_2,
                    shape: ThemeStyle().RoundedButtonLandscape),
              ),
              SizedBox(width: Screen_size["screen_Width"] * 0.025),
              ElevatedButton(
                onPressed: () {
                  timer_counter = 240;
                  timer_colors = ThemeColors().minutes_color_4;

                  context.read<Counter>().startTimer();
                },
                child:
                    Text('4 Minutes', style: ThemeStyle().LandscapeButtonSize),
                style: ElevatedButton.styleFrom(
                    primary: ThemeColors().minutes_color_4,
                    shape: ThemeStyle().RoundedButtonLandscape),
              ),
              SizedBox(
                width: Screen_size["screen_Width"] * 0.025,
              ),
              ElevatedButton(
                onPressed: () {
                  timer_counter = 420;
                  timer_colors = ThemeColors().minutes_color_7;

                  context.read<Counter>().startTimer();
                },
                child:
                    Text('7 Minutes', style: ThemeStyle().LandscapeButtonSize),
                style: ElevatedButton.styleFrom(
                    primary: ThemeColors().minutes_color_7,
                    shape: ThemeStyle().RoundedButtonLandscape),
              ),
            ],
          ),
          // SizedBox(
          //   height: Screen_size["screen_height_new"] * 0.00,
          // ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(
                    0.0,
                    Screen_size['screen_Height'] * 0.055,
                    0.0,
                    Screen_size['screen_Height'] * 0.005),
                child: ElevatedButton(
                  onPressed: () {
                    context.read<Counter>().timer_cancel();
                    timer_colors = Colors.white;
                  },
                  child: Text('Cancel Timer',
                      style: ThemeStyle().LandscapeCancelButtonSize),
                  style: ElevatedButton.styleFrom(
                      primary: ThemeColors().cancel_timer,
                      shape: ThemeStyle().RoundedButtonLandscape),
                ),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
