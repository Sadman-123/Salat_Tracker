import 'package:flutter/material.dart';
import 'package:salah_app/style/style.dart';
class Splash2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var mdw=MediaQuery.sizeOf(context).width;
    var mdh=MediaQuery.sizeOf(context).height;
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: false,),
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
            SizedBox(height: mdh*0.022,),
            Container(
              child: Text("Assalamu Alaikum",style: splash_txt1(mdw, mdh),),
            ),
            SizedBox(height: mdh*0.022,),
            Container(
              child: Image.asset("assets/pic/muslim.png",width: mdw*0.63,),
            ),
            SizedBox(height: mdh*0.027,),
            Container(
              child: Column(
                children: [
                  Text("Track your Prayers with Ease",style: splash_txt1(mdw, mdh),),
                  Text("To provide you with accurate prayer times and timely\nreminders, please allow the app to access your \nlocation and notifications.",textAlign: TextAlign.center,style: splash_txt2(mdw, mdh),)
                ],
              ),
            ),
            SizedBox(height: mdh*0.07,),
            Container(
              child: InkWell(
                onTap: (){},
                borderRadius: BorderRadius.circular(50),
                child: Image.asset('assets/pic/arrow-right.png',width: mdw*0.24,),
              ),
            )
          ],
        ),
      ),
    );
  }
}