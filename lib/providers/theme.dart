// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, unused_element, avoid_print, prefer_function_declarations_over_variables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:timer/main.dart';
import 'package:timer/providers/counter_provider.dart';

class ThemeColors {
  var minutes_color_2 = Colors.lightBlue[300];
  var minutes_color_4 = Colors.green;
  var minutes_color_7 = Colors.pink;
  var cancel_timer = Colors.red;

  // old colors =
  // var minutes_color_2 = Colors.amber[800];
  // var minutes_color_4 = Colors.blue;
  // var minutes_color_7 = Colors.purple[400];
  // var cancel_timer = Colors.red;
}

// class ThemeStyle {
//   var RoundedButtonPotrait =
//       RoundedRectangleBorder(borderRadius: BorderRadius.circular(35));
//   var RoundedButtonLandscape =
//       RoundedRectangleBorder(borderRadius: BorderRadius.circular(35));
// // botton size
//   var PotraitButtonSize =
//       TextStyle(fontSize: Screen_size['screen_Width'] * 0.085);
//   var PotraitCancelButtonSize =
//       TextStyle(fontSize: Screen_size['screen_Width'] * 0.095);

//   var LandscapeButtonSize =
//       TextStyle(fontSize: Screen_size['screen_Width'] * 0.04);
//   var LandscapeCancelButtonSize =
//       TextStyle(fontSize: Screen_size['screen_Width'] * 0.05);
//   // timer size
//   var PotraitTimerStyle = TextStyle(
//       fontSize: Screen_size['screen_Width'] * 0.27, color: timer_colors);
//   var LandscapeTimerStyle = TextStyle(
//       fontSize: Screen_size['screen_Width'] * 0.2, color: timer_colors);

//   // timer done siez
//   var PotraitTimerDone = TextStyle(
//       color: Colors.green,
//       fontWeight: FontWeight.bold,
//       fontSize: Screen_size['screen_Width'] * 0.1);

//   var LandScapeTimerDone = TextStyle(
//       color: Colors.green,
//       fontWeight: FontWeight.bold,
//       fontSize: Screen_size['screen_Width'] * 0.06);
// }

// Test
class ThemeStyle {
  var RoundedButtonPotrait =
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(35));
  var RoundedButtonLandscape =
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(35));
// botton size
  var PotraitButtonSize =
      TextStyle(fontSize: Screen_size['screen_Width'] * 0.085);
  var PotraitCancelButtonSize =
      TextStyle(fontSize: Screen_size['screen_Width'] * 0.095);

  var LandscapeButtonSize =
      TextStyle(fontSize: Screen_size["screen_height_new"] * 0.1);
  var LandscapeCancelButtonSize =
      TextStyle(fontSize: Screen_size["screen_height_new"] * 0.12);
  // timer size
  var PotraitTimerStyle = TextStyle(
      fontSize: Screen_size['screen_Width'] * 0.27, color: timer_colors);
  var LandscapeTimerStyle = TextStyle(
      fontSize: Screen_size["screen_height_new"] * 0.4, color: timer_colors);

  // timer done siez
  var PotraitTimerDone = TextStyle(
      color: Colors.green,
      fontWeight: FontWeight.bold,
      fontSize: Screen_size['screen_Width'] * 0.1);

  var LandScapeTimerDone = TextStyle(
      color: Colors.green,
      fontWeight: FontWeight.bold,
      fontSize: Screen_size["screen_height_new"] * 0.07);
}
