import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:getstate/views/DemoScreen1.dart';
import 'package:getstate/views/screen1.dart';

class getpagesconcept extends StatelessWidget {
  const getpagesconcept({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text("use Get pages concept in below button"),
          ElevatedButton(
              onPressed: () {
                Get.to(() => ScreenOne(),
                    transition: Transition.upToDown,
                    duration: Duration(seconds: 3));
              },
              child: Text("Move to Screen 1")),
        ]),
      ),
    );
  }
}
