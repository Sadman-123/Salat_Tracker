import 'package:flutter/material.dart';
import 'package:salah_app/custom_widgets/othercard.dart';
class Otherparts extends StatelessWidget{
  final double mdw,mdh;
  Otherparts({super.key, required this.mdw, required this.mdh});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        height: mdh*0.16,
        child: Row(
          children: [
            OtherCard(mdw, mdh, "assets/pic/quran.png", "Al-Quran"),
            OtherCard(mdw, mdh, "assets/pic/hadith.png", "Hadith"),
            OtherCard(mdw, mdh, "assets/pic/pray.png", "Dua"),
            OtherCard(mdw, mdh, "assets/pic/beads.png", "Tasbih"),
            OtherCard(mdw, mdh, "assets/pic/qibla.png", "Qibla")

          ],
        ),
      ),
    );
  }
}