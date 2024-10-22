import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salah_app/controller/salat_time_controller.dart';
class Didyoupraymsg extends StatelessWidget{
  SalatTimeController salat=Get.find();
  final double mdw,mdh;
   Didyoupraymsg({super.key, required this.mdw, required this.mdh});
  @override
  Widget build(BuildContext context) {
    return Obx((){
      return Visibility(
        visible: salat.isVisible.value,
        child: Stack(
          children: [
            Obx(()=> Container(
              height: mdh * 0.50,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("${salat.prevPrayerCardPic}"),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
            ),),
            Positioned(
              bottom: 250,
              left: 20,
              child: Column(
                children: [
                  Text(
                    "Did you Pray",
                    style: TextStyle(fontSize: mdw * 0.054, color: Colors.white),
                  ),
                  Obx(()=>Text(
                    "${salat.prevPrayer}",
                    style: TextStyle(fontSize: mdw * 0.172, color: Colors.white),
                  ),)
                ],
              ),
            ),
            Positioned(
              bottom: 32,
              left: 24,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(child: Image.asset("assets/pic/remove.png", width: mdw * 0.12)),
                  SizedBox(width: mdw * 0.58),
                  InkWell(child: Image.asset("assets/pic/check.png", width: mdw * 0.12),onTap: (){salat.change_visible();},),
                ],
              ),
            ),
          ],
        ),
      );
    });
  }
}