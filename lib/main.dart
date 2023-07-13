// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, unused_element, avoid_print, prefer_function_declarations_over_variables
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:timer/landscape.dart';
import 'package:timer/portrait.dart';
import 'package:timer/providers/counter_provider.dart';
import 'package:wakelock/wakelock.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Keep the screen on
  Wakelock.enable();
  // ^^^^^
  runApp(MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => Counter())],
      child: MaterialApp(
        home: Home(),
      )));
}

Map<String, dynamic> Screen_size = {};

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    // Device Orientation
    final deviceOrientation = MediaQuery.of(context).orientation;
    // device size

    Screen_size['screen_Height'] = MediaQuery.of(context).size.height;
    Screen_size['screen_Width'] = MediaQuery.of(context).size.width;
    // check the app bar size
    Screen_size['appBar_Height'] = AppBar(
      title: Text(
        "",
      ),
    ).preferredSize.height;
    // statusbar size
    Screen_size['statusBar_Height'] = MediaQuery.of(context).padding.top;

    Screen_size["screen_height_new"] = Screen_size['screen_Height'] -
        Screen_size['appBar_Height'] -
        Screen_size['statusBar_Height'];

    Screen_size["screen_Width_new"] = Screen_size['screen_Width'] -
        Screen_size['appBar_Height'] -
        Screen_size['statusBar_Height'];

    return Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          title: Text(
            "Amiram Timer",
          ),
          backgroundColor: Colors.grey[800],
          centerTitle: true,
        ),
        body: Center(
          child:
              deviceOrientation == Orientation.portrait ? MyColum() : MyRow(),
        ));
  }
}


























// class _MyColumState extends State<MyColum> {

//   @override
//   Widget build(BuildContext context) {
//     return 
//      Padding(
//       padding: const EdgeInsets.all(30.0),
//       child: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Text(is_timer_done_text,
//                 style: TextStyle(
//                   color: Colors.green,
//                   fontWeight: FontWeight.bold,
//                   fontSize: 30.0,
//                 )),
//             Padding(
//               padding: const EdgeInsets.all(20.0),
//               child: Text(
//                 format_time,
//                 style: TextStyle(fontSize: 80.0, color: Colors.white),
//               ),
//             ),
//             SizedBox(
//               height: 45.0,
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 timer_counter = 120;
//                 startTimer();
//               },
//               child: Text(
//                 '2 Minutes',
//                 style: TextStyle(fontSize: 25.0),
//               ),
//               style: ElevatedButton.styleFrom(primary: Colors.amber[800]),
//             ),
//             SizedBox(
//               height: 25.0,
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 timer_counter = 240;
//                 startTimer();
//               },
//               child: Text('4 Minutes', style: TextStyle(fontSize: 25.0)),
//               style: ElevatedButton.styleFrom(primary: Colors.blue),
//             ),
//             SizedBox(
//               height: 25.0,
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 timer_counter = 420;
//                 startTimer();
//               },
//               child: Text('7 Minutes', style: TextStyle(fontSize: 25.0)),
//               style: ElevatedButton.styleFrom(
//                 primary: Colors.purple[400],
//               ),
//             ),
//             SizedBox(
//               height: 45.0,
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 _timer!.cancel();
//                 print('---- STOP TIMER ----');
//                 setState(() {
//                   timer_counter = 0;
//                   format_time = '00:00';
//                   is_timer_done = false;
//                   is_timer_done_text = '';
//                 });
//                 print(timer_counter);
//               },
//               child: Text('Cancel Timer', style: TextStyle(fontSize: 25.0)),
//               style: ElevatedButton.styleFrom(
//                 primary: Colors.red,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
