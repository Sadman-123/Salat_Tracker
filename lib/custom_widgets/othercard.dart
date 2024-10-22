import 'package:flutter/material.dart';
Widget OtherCard(double mdw,double mdh,String icon,String txt){
  return  Container(
    margin: EdgeInsets.all(10),
    child: Column(
      children: [
        Container(
          child: Image.asset("${icon}",width: mdw*0.10,),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              color: Color(0xFF152945)
          ),
          padding: EdgeInsets.all(10),
        ),
        Text("${txt}",style: TextStyle(fontSize: mdw*0.045,fontWeight: FontWeight.bold),)
      ],
    ),
  );
}