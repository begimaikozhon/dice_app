import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required String title}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int leftkubik = 1;
  int rightkubik = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: const Color(0xffFFFFFF),
        title: const Text(
          'Тапшырма 5',
          style: TextStyle(color: Color(0xff000000)),
        ),
      ),
      backgroundColor: const Color(0xffFFE93B),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      leftkubik = Random().nextInt(6) + 1;
                    });
                    if (kDebugMode) {
                      print('leftkubik: $leftkubik');
                    }
                  },
                  child: Image.asset('assets/dice$leftkubik.png'),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      rightkubik = Random().nextInt(6) + 1;
                    });
                    if (kDebugMode) {
                      print('right:$rightkubik');
                    }
                  },
                  child: Image.asset('assets/dice$rightkubik.png'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
