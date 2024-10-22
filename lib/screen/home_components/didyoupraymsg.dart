import 'package:flutter/material.dart';
class Didyoupraymsg extends StatelessWidget{
  final double mdw,mdh;
   Didyoupraymsg({super.key, required this.mdw, required this.mdh});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: mdh * 0.50,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/pic/dhuhur.jpg"),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        Positioned(
          bottom: 250,
          left: 20,
          child: Column(
            children: [
              Text(
                "Did you Pray",
                style: TextStyle(fontSize: mdw * 0.054, color: Colors.white),
              ),
              Text(
                "Asr",
                style: TextStyle(fontSize: mdw * 0.172, color: Colors.white),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 32,
          left: 24,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(child: Image.asset("assets/pic/remove.png", width: mdw * 0.12)),
              SizedBox(width: mdw * 0.58),
              InkWell(child: Image.asset("assets/pic/check.png", width: mdw * 0.12)),
            ],
          ),
        ),
      ],
    );
  }
}