import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salah_app/screen/splash.dart';
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
        GetPage(name: '/splash', page: () => Splash(),)
      ],
    );
  }
}
