import 'dart:math';

import 'package:get/get.dart';

class DiceController extends GetxController {
  Rx<int> solDice = 4.obs;
  Rx<int> onDice = 2.obs;
  final random1 = Random().nextInt(6) + 1;
  final random2 = Random().nextInt(6) + 1;
}
