import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Hw4 extends StatefulWidget {
  const Hw4({Key? key}) : super(key: key);

  @override
  State<Hw4> createState() => _Hw4State();
}

class _Hw4State extends State<Hw4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () async {
                final SharedPreferences prefs =
                    await SharedPreferences.getInstance();
                final int? num = prefs.getInt("num1");
              },
              child: Text("get")),
          ElevatedButton(
              onPressed: () async {
                final SharedPreferences prefs =
                    await SharedPreferences.getInstance();
                await prefs.setInt("num1", 150);
              },
              child: const Text("create")),
          ElevatedButton(onPressed: () async {
            final SharedPreferences prefs=await SharedPreferences.getInstance();
            prefs.clear();
          }, child: Text("clear")),
        ],
      ),
    );
  }
}
