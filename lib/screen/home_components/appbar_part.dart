import 'package:flutter/material.dart';
import 'package:get/get.dart';
Widget AppbarPart(double mdw,double mdh) {
  return Container(
    height: 100,
    width: double.infinity,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [//0.068
        Container(
          child: Get.isDarkMode?Image.asset("assets/pic/sujud2.png",height: mdh*0.068,):Image.asset("assets/pic/sujud.png",height: mdh*0.068,),
        ),
        Container(
          width: mdw*0.13,
          decoration: BoxDecoration(
            color: Color(0xFF142845),
            borderRadius: BorderRadius.circular(14)
          ),
          child: IconButton(onPressed: (){}, icon: Icon(Icons.notifications,size: mdw*0.06,color: Color(0xFFf7f7f6),))
        )
      ],
    ),
  );
}