import 'package:flutter/material.dart';
import 'package:salah_app/style/style.dart';
import 'package:get/get.dart';
class Splash extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var mdw=MediaQuery.sizeOf(context).width;
    var mdh=MediaQuery.sizeOf(context).height;
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: false,backgroundColor: Get.isDarkMode?Color(0xFF161f28):Color(0xFFf7f6f7),),
      body: Center(
        child: Column(
          children: [
            Container(
              child: Get.isDarkMode?Image.asset("assets/pic/sujud2.png",width: mdw*0.35,):Image.asset("assets/pic/sujud.png",width: mdw*0.35,),
            ),
            SizedBox(height: mdh*0.08,),
            Container(
              child: Column(
                children: [
                  Text("Welcome to Salah Tracker App",style:splash_txt1(mdw, mdh),),
                  SizedBox(height: mdh*0.0013,),
                  Text("Track,Reflect and Elevate your Spiritual Journey",style: splash_txt2(mdw, mdh),)
                ],
              ),
            ),
            SizedBox(height: mdh*0.24,),
            Container(
              child: InkWell(
                onTap: (){
                  Get.toNamed('/splash2');
                },
                borderRadius: BorderRadius.circular(50),
                child: Get.isDarkMode?Image.asset('assets/pic/next.png',width: mdw*0.24,):Image.asset('assets/pic/arrow-right.png',width: mdw*0.24,),
              ),
            )
          ],
        ),
      ),
    );
  }
}