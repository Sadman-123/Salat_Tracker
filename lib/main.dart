import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salah_app/screen/splash.dart';
import 'package:salah_app/screen/splash2.dart';
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
      initialRoute: '/splash2',
      getPages: [
        GetPage(name: '/splash', page: () => Splash(),),
        GetPage(name: '/splash2', page: () => Splash2(),)
      ],
    );
  }
}
