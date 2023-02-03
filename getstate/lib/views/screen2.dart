import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getstate/controllers/demo2controller.dart';
import 'package:getstate/views/screen1.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.find<DemoTwoController>();
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text("Value was ${controller.count}"),
            ElevatedButton(
                onPressed: () {
                  Get.to(() => ScreenOne());
                },
                child: Text("Back")),
          ]),
        ),
      ),
    );
  }
}
