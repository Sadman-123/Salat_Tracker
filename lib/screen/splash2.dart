import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:geolocator/geolocator.dart';
import 'package:salah_app/controller/salat_time_controller.dart';
import 'package:salah_app/style/style.dart';

class Splash2 extends StatelessWidget {
  SalatTimeController salat=Get.find();
  @override
  Widget build(BuildContext context) {
    var mdw = MediaQuery.sizeOf(context).width;
    var mdh = MediaQuery.sizeOf(context).height;
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: false,
          backgroundColor: Get.isDarkMode?Color(0xFF161f28):Color(0xFFf7f6f7),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Color(0xFFc9cfd6),
                borderRadius: BorderRadius.circular(24),
              ),
              width: mdw * 0.84,
              height: mdh * 0.022,
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xFF171f29),
                      borderRadius: BorderRadius.circular(14),
                    ),
                    width: (mdw * 0.84) / 2,
                  ),
                ],
              ),
            ),
            SizedBox(height: mdh * 0.022),
            Text("Assalamu Alaikum", style: splash_txt1(mdw, mdh)),
            SizedBox(height: mdh * 0.032),
            Image.asset("assets/pic/muslim.png", width: mdw * 0.63),
            SizedBox(height: mdh * 0.027),
            Column(
              children: [
                Text("Track your Prayers with Ease", style: splash_txt1(mdw, mdh)),
                Text(
                  "To provide you with accurate prayer times and timely\nreminders, please allow the app to access your \nlocation and notifications.",
                  textAlign: TextAlign.center,
                  style: splash_txt2(mdw, mdh),
                ),
              ],
            ),
            SizedBox(height: mdh * 0.07),
            InkWell(
              onTap: () async {
                await _handlePermissions();
              },
              borderRadius: BorderRadius.circular(50),
              child: Get.isDarkMode?Image.asset('assets/pic/next.png',width: mdw*0.24,):Image.asset('assets/pic/arrow-right.png',width: mdw*0.24,),
            ),
          ],
        ),
      ),
    );
  }
  Future<void> _handlePermissions() async {
    bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error("Location services are disabled.");
    }
    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error("Permission denied");
      } else if (permission == LocationPermission.deniedForever) {
        return Future.error("Permission permanently denied");
      }
    }
    Position position = await Geolocator.getCurrentPosition();
    Get.toNamed('/splash3');
    salat.getLang(position.latitude.toString(),position.longitude.toString());
    print("Current position: ${position}");
  }
}
