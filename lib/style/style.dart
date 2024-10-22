import 'package:flutter/material.dart';
TextStyle splash_txt1(double mdw,double mdh)
{
  return  TextStyle(fontSize: mdw*0.064,fontWeight: FontWeight.w900);
}
TextStyle splash_txt2(double mdw,double mdh)
{
  return TextStyle(fontSize: mdw*0.037,fontStyle: FontStyle.italic,color: Colors.black87);
}
TextStyle get_started_btn(double mdw,double mdh){
  return TextStyle(color: Color(0xFFfcfcfc),fontSize: mdw*0.049,letterSpacing: 1.2,fontWeight: FontWeight.w500);
}