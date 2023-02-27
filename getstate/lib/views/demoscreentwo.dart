import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getstate/controllers/demo1controller.dart';

class Demo extends StatelessWidget {
  const Demo({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(DemoOneController());

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Obx((() => Text("This is Value : ${controller.count.value}"))),
            ElevatedButton(
                onPressed: controller.increment, child: Text("Count")),
          ]),
        ),
      ),
    );
  }
}
