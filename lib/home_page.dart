import 'dart:developer' as math;
import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int solDice = 4;
  int onDice = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Center(child: Text('Dice App')),
      ),
      body: Center(
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: InkWell(
                  onTap: () {
                    setState(() {});
                    final random1 = Random().nextInt(6) + 1;
                    final random2 = Random().nextInt(6) + 1;

                    solDice = random1;
                    onDice = random2;
                    math.log('Sol jak basilip atat');
                  },
                  child: Image.asset(
                    'assets/images/dice$solDice.png',
                  ),
                ),
              ),
            ),
            Expanded(
              child: SizedBox(
                height: 170,
                width: 170,
                child: InkWell(
                  onTap: () {
                    setState(() {
                      onDice = Random().nextInt(6) + 1;
                      solDice = Random().nextInt(6) + 1;
                    });
                  },
                  child: Image.asset('assets/images/dice$onDice.png'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
