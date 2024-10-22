import 'package:flutter/material.dart';
import 'package:salah_app/style/style.dart';
Widget GetStartedbtn(double mdw,double mdh) {
  return Container(
    width: mdw*0.8,
    height: mdh*0.065,
    child: Center(
      child: Text("Get Started",style: get_started_btn(mdw, mdh),),
    ),
    decoration: BoxDecoration(
      color: Color(0xFF131820),
      borderRadius: BorderRadius.circular(24)
    ),
  );
}