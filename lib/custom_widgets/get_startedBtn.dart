import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salah_app/controller/salat_time_controller.dart';
import 'package:salah_app/style/style.dart';
class GetStartedbtn extends StatelessWidget{
  final double mdw,mdh;
   GetStartedbtn({super.key, required this.mdw, required this.mdh});
   SalatTimeController salat=Get.find();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        salat.fetchPrayerTimes().then((_)=>Get.toNamed('/login'));
      },
      child: Container(
        width: mdw*0.8,
        height: mdh*0.065,
        child: Center(
          child: Text("Get Started",style: get_started_btn(mdw, mdh),),
        ),
        decoration: BoxDecoration(
            color: Get.isDarkMode?Color(0xFFf7f6f7):Color(0xFF161f28),
            borderRadius: BorderRadius.circular(24)
        ),
      ),
    );
  }
}