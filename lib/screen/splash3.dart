import 'package:flutter/material.dart';
import 'package:salah_app/custom_widgets/get_startedBtn.dart';
import 'package:salah_app/style/style.dart';
import 'package:get/get.dart';
class Splash3 extends StatelessWidget{
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
              decoration: BoxDecoration(
                color: Color(0xFF171f29),//Color(0xFF171f29)
                borderRadius: BorderRadius.circular(24),
              ),
              width: mdw * 0.84,
              height: mdh * 0.022,
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFc9cfd6),//Color(0xFFc9cfd6)
                      borderRadius: BorderRadius.circular(14),
                    ),
                    width: (mdw * 0.84) / 2,
                  ),
                ],
              ),
            ),
            SizedBox(height: mdh*0.082,),
            Container(
              child: Image.asset("assets/pic/muslim2.png",width: mdw*0.63,),
            ),
            SizedBox(height: mdh*0.082,),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Enhance Your Spiritual Practice",style: splash3_txt1(mdw, mdh),),
                  SizedBox(height: mdh*0.002,),
                  Text("Also helps you incorporate tasbih and other daily \nislamic rituals into your routine.",style: splash3_txt2(mdw, mdh),)
                ],
              ),
            ),
            SizedBox(height: mdh*0.082,),
            GetStartedbtn(mdw: mdw, mdh: mdh)
          ],
        ),
      ),
    );
  }
}