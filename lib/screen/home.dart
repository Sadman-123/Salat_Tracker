import 'package:flutter/material.dart';
import 'package:salah_app/screen/home_components/appbar_part.dart';
import 'package:salah_app/screen/home_components/prayer_card.dart';
class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var mdw = MediaQuery.sizeOf(context).width;
    var mdh = MediaQuery.sizeOf(context).height;
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            SizedBox(height: mdh*0.056,),
            AppbarPart(mdw, mdh),
            PrayerCard(mdw: mdw, mdh: mdh)
          ],
        ),
      ),
    );
  }
}