import 'package:get/get.dart';

class DemoOneController extends GetxController {
  var count = 0.obs;

  increment() {
    count++;
    refresh();
    print(count);
  }
}
