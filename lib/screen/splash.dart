import 'package:flutter/material.dart';
import 'package:salah_app/style/style.dart';
class Splash extends StatelessWidget{
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
              child: Image.asset("assets/pic/sujud.png",width: mdw*0.35,),
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