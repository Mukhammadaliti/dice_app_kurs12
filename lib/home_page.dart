import 'dart:developer' as math;
import 'dart:math';
import 'package:get/get.dart';

import 'package:dice_app_kurs12/controller/dice_controller.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  DiceController _controller = Get.put(DiceController());

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
                      _controller.solDice.value = Random().nextInt(6) + 1;
                      _controller.onDice.value = Random().nextInt(6) + 1;
                      math.log('Sol jak basilip atat');
                    },
                    child: Obx(() => Image.asset(
                          'assets/images/dice${_controller.solDice}.png',
                        ))),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: InkWell(
                  onTap: () {
                    _controller.onDice.value = Random().nextInt(6) + 1;
                    _controller.solDice.value = Random().nextInt(6) + 1;
                  },
                  child: Obx(() => Image.asset(
                      'assets/images/dice${_controller.onDice}.png')),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
