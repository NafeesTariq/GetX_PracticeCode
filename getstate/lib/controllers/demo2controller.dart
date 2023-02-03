import 'package:get/get.dart';

class DemoTwoController extends GetxController {
  var count = 0;
  var famliymem = 10;

  increment() {
    count++;
    famliymem++;
    refresh();
    print(count);
  }
}
