import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Hw3 extends StatefulWidget {
  const Hw3({Key? key}) : super(key: key);

  @override
  State<Hw3> createState() => _Hw3State();
}

class _Hw3State extends State<Hw3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        ElevatedButton(
            onPressed: () async {
              final SharedPreferences prefs =
                  await SharedPreferences.getInstance();
              final double1 = prefs.getDouble("decimal");
              print(double1);
            },
            child: const Text("get")),
        ElevatedButton(
            onPressed: () async {
              final SharedPreferences prefs =
                  await SharedPreferences.getInstance();
              await prefs.setDouble("decimal", 1.5);
            },
            child: const Text("create")),
        ElevatedButton(
            onPressed: () async {
              final SharedPreferences prefs =
                  await SharedPreferences.getInstance();
              prefs.clear();
            },
            child: const Text("clear")),
      ]),
    );
  }
}
