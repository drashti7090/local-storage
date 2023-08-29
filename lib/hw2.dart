import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Hw2 extends StatefulWidget {
  const Hw2({Key? key}) : super(key: key);

  @override
  State<Hw2> createState() => _Hw2State();
}

class _Hw2State extends State<Hw2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        ElevatedButton(
            onPressed: () async {
              final SharedPreferences prefs =
                  await SharedPreferences.getInstance();
              final bool? repeat = prefs.getBool('repeat');
              print(repeat);
            },
            child: Text("get")),
        ElevatedButton(
            onPressed: () async {
              final SharedPreferences prefs =
                  await SharedPreferences.getInstance();
              await prefs.setBool('repeat', true);
            },
            child: Text("create")),
        ElevatedButton(
            onPressed: () async {
              final SharedPreferences prefs =
                  await SharedPreferences.getInstance();
              prefs.clear();
            },
            child: Text("clear"))
      ]),
    );
  }
}
