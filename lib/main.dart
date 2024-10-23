import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salah_app/controller/salat_time_controller.dart';
import 'package:salah_app/controller/user_controller.dart';
import 'package:salah_app/screen/home.dart';
import 'package:salah_app/screen/login.dart';
import 'package:salah_app/screen/register.dart';
import 'package:salah_app/screen/splash.dart';
import 'package:salah_app/screen/splash2.dart';
import 'package:salah_app/screen/splash3.dart';
void main()
{
  Get.put(SalatTimeController());
  Get.put(UserController());
  runApp(Main());
}
class Main extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        scaffoldBackgroundColor: Color(0xFFf7f6f7),
      ),
      darkTheme: ThemeData(
        scaffoldBackgroundColor: Color(0xFF161f28),
        brightness: Brightness.dark,
        textTheme: Theme.of(context).textTheme.apply(
          bodyColor: Colors.white,
          displayColor: Colors.white,
        ),
      ),
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      initialRoute: '/splash',
      getPages: [
        GetPage(name: '/splash', page: () => Splash(),transition: Transition.cupertino),
        GetPage(name: '/splash2', page: () => Splash2(),transition: Transition.cupertino),
        GetPage(name: '/splash3', page: () => Splash3(),transition: Transition.cupertino),
        GetPage(name: '/home', page: () => Home(),transition: Transition.cupertino),
        GetPage(name: '/login', page: () => Login(),transition: Transition.cupertino),
        GetPage(name: '/register', page: () => Register(),transition: Transition.cupertino)
      ],
    );
  }
}
