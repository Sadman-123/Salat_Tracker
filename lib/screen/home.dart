import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salah_app/controller/salat_time_controller.dart';
import 'package:salah_app/screen/home_components/appbar_part.dart';
import 'package:salah_app/screen/home_components/prayer_card.dart';
import 'package:salah_app/screen/home_components/salat_times.dart';
class Home extends StatelessWidget{
  SalatTimeController salat=Get.find();
  @override
  Widget build(BuildContext context) {
    var mdw = MediaQuery.sizeOf(context).width;
    var mdh = MediaQuery.sizeOf(context).height;
    return Scaffold(
      body: Obx((){
        if(salat.isLoading.value){
          return Center(child: CircularProgressIndicator(),);
        }
        else{
          return Container(
            margin: EdgeInsets.all(10),
            child: Column(
              children: [
                SizedBox(height: mdh*0.056,),
                AppbarPart(mdw, mdh),
                PrayerCard(mdw: mdw, mdh: mdh),
                SalatTimes(mdw: mdw, mdh: mdh)
              ],
            ),
          );
        }
      })
    );
  }
}