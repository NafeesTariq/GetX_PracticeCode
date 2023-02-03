import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getstate/controllers/demo1controller.dart';
import 'package:getstate/views/screen2.dart';

import '../controllers/demo2controller.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

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
              onPressed: controller.increment,
              child: Text("Count"),
            ),
            ElevatedButton(
              onPressed: (() {
                Get.snackbar("GetX SnackBar", "I used Getx to show Snackbar",
                    backgroundColor: Colors.amber, colorText: Colors.white);
              }),
              child: Text("Show Snackbar"),
            ),
            ElevatedButton(
                onPressed: () {
                  Get.defaultDialog(
                    backgroundColor: Colors.amber,
                    title: "Accept all terms and Conditions",
                    textCancel: "Cancel",
                    textConfirm: "Confirm",
                    barrierDismissible: false,

                    // onconfirm,oncencel
                  );
                },
                child: Text("Default Dialogiue Showed")),
            ElevatedButton(
              onPressed: () {
                Get.to(SecondScreen(),
                    transition: Transition.downToUp,
                    duration: Duration(seconds: 3));
              },
              child: Text("Change Screen"),
            ),
          ]),
        ),
      ),
    );
  }
}
