import 'package:flutter/material.dart';
import 'package:get/get.dart';
TextStyle splash_txt1(double mdw,double mdh)
{
  return  TextStyle(fontSize: mdw*0.064,fontWeight: FontWeight.w900,color: Get.isDarkMode?Color(0xFFf7f6f7):Color(0xFF161f28));
}
TextStyle splash_txt2(double mdw,double mdh)
{
  return TextStyle(fontSize: mdw*0.037,fontStyle: FontStyle.italic,color: Get.isDarkMode?Color(0xFFf7f6f7):Color(0xFF161f28));
}
TextStyle get_started_btn(double mdw,double mdh){  return TextStyle(color: Get.isDarkMode?Color(0xFF161f28):Color(0xFFf7f6f7),fontSize: mdw*0.049,letterSpacing: 1.2,fontWeight: FontWeight.w500);
}
TextStyle splash3_txt1(double mdw,double mdh)
{
  return TextStyle(fontSize: mdw*0.058,fontWeight: FontWeight.bold,color: Get.isDarkMode?Color(0xFFf7f6f7):Color(0xFF161f28));
}
TextStyle splash3_txt2(double mdw,double mdh)
{
  return TextStyle(fontSize: mdw*0.036,color: Get.isDarkMode?Color(0xFFf7f6f7):Color(0xFF161f28));
}