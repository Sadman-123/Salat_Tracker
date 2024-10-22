import 'package:flutter/material.dart';
Widget GetStartedbtn(double mdw,double mdh) {
  return Container(
    width: mdw*0.8,
    height: mdh*0.065,
    child: Center(
      child: Text("Get Started",style: TextStyle(color: Color(0xFFfcfcfc),fontSize: mdw*0.049,letterSpacing: 1.2,fontWeight: FontWeight.w500),),
    ),
    decoration: BoxDecoration(
      color: Color(0xFF131820),
      borderRadius: BorderRadius.circular(24)
    ),
  );
}