import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Hw1 extends StatefulWidget {
  const Hw1({Key? key}) : super(key: key);

  @override
  State<Hw1> createState() => _Hw1State();
}

class _Hw1State extends State<Hw1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () async {
                final SharedPreferences prefs =
                    await SharedPreferences.getInstance();
                final int? counter = prefs.getInt('counter');
                print(counter);

              },
              child: Text("get")),
          ElevatedButton(
              onPressed: () async {
                final SharedPreferences prefs =
                    await SharedPreferences.getInstance();
                await prefs.setInt('counter', 10);

              },
              child: Text("create")),
          ElevatedButton(onPressed: () async {
            final SharedPreferences prefs =
                await SharedPreferences.getInstance();
            prefs.clear();
          }, child: Text("clear")),
        ],
      ),
    );
  }
}
