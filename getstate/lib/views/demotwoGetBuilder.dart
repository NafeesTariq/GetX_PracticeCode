import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getstate/controllers/demo1controller.dart';

import '../controllers/demo2controller.dart';

class demoscreentwo extends StatelessWidget {
  const demoscreentwo({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(DemoTwoController());

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            GetBuilder<DemoTwoController>(builder: (controller) {
              return Text(
                  "This is Value : ${controller.count} and family members are : ${controller.famliymem}");
            }),
            // Obx((() => Text("This is Value : ${controller.count.value}"))),
            ElevatedButton(
                onPressed: controller.increment, child: Text("Count")),
            ElevatedButton(
              onPressed: () {
                Get.changeTheme(ThemeData.dark());
              },
              child: Text("Change Theme"),
            ),
          ]),
        ),
      ),
    );
  }
}
