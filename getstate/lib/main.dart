import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getstate/views/DemoScreen1.dart';
import 'package:getstate/views/demotwoGetBuilder.dart';
import 'package:getstate/views/getpagesconcept.dart';
import 'package:getstate/views/screen1.dart';
import 'package:getstate/views/screen2.dart';




void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: [
        GetPage(name: '/DemoScreen1', page: () => const Demo()),
        GetPage(name: '/DemoScreenTwo', page: () => const demoscreentwo()),
        GetPage(name: '/getpagesconcept', page: () => const getpagesconcept()),
        GetPage(name: '/screen1', page: () => const ScreenOne()),
        GetPage(name: '/screen1', page: () => const SecondScreen()),
      ],
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(fontFamily: 'quick'),
      home: getpagesconcept(),
    );
  }
}
