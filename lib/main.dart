import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salah_app/screen/splash.dart';
import 'package:salah_app/screen/splash2.dart';
import 'package:salah_app/screen/splash3.dart';
void main()
{
  runApp(Main());
}
class Main extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/splash',
      getPages: [
        GetPage(name: '/splash', page: () => Splash(),transition: Transition.cupertino),
        GetPage(name: '/splash2', page: () => Splash2(),transition: Transition.cupertino),
        GetPage(name: '/splash3', page: () => Splash3(),transition: Transition.cupertino)
      ],
    );
  }
}
