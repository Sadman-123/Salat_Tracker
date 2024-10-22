import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:salah_app/controller/salat_time_controller.dart';
class SalatTimes extends StatelessWidget{
  final double mdw,mdh;
   SalatTimes({super.key, required this.mdw, required this.mdh});
   SalatTimeController salat=Get.find();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        height: mdh*0.12,
        child: Obx((){
          return Row(
            children: [
              Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(7),
                child: Column(
                  children: [
                    Text("Fajr",style: TextStyle(fontSize: mdw*0.06),),
                    Text("${salat.fajr}",style: TextStyle(fontSize: mdw*0.051),)
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(7),
                child: Column(
                  children: [
                    Text("Duhur",style: TextStyle(fontSize: mdw*0.06),),
                    Text("${salat.duhur}",style: TextStyle(fontSize: mdw*0.051),)
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(7),
                child: Column(
                  children: [
                    Text("Asr",style: TextStyle(fontSize: mdw*0.06),),
                    Text("${salat.asr}",style: TextStyle(fontSize: mdw*0.051),)
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(7),
                child: Column(
                  children: [
                    Text("Magrib",style: TextStyle(fontSize: mdw*0.06),),
                    Text("${salat.margib}",style: TextStyle(fontSize: mdw*0.051),)
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(7),
                child: Column(
                  children: [
                    Text("Isha",style: TextStyle(fontSize: mdw*0.06),),
                    Text("${salat.isha}",style: TextStyle(fontSize: mdw*0.051),)
                  ],
                ),
              ),
            ],
          );
        })
      ),
    );
  }
}