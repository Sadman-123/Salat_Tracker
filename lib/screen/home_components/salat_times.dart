import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salah_app/controller/salat_time_controller.dart';

class SalatTimes extends StatelessWidget {
  final double mdw, mdh;
  SalatTimes({super.key, required this.mdw, required this.mdh});
  final SalatTimeController salat = Get.find();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        height: mdh * 0.12,
        child: Obx(() {
          return Row(
            children: [
              _buildPrayerTime(
                name: "Fajr",
                time: salat.fajr.value,
                currentPrayer: salat.currentPrayer.value,
                mdw: mdw,
              ),
              _buildPrayerTime(
                name: "Duhur",
                time: salat.duhur.value,
                currentPrayer: salat.currentPrayer.value,
                mdw: mdw,
              ),
              _buildPrayerTime(
                name: "Asr",
                time: salat.asr.value,
                currentPrayer: salat.currentPrayer.value,
                mdw: mdw,
              ),
              _buildPrayerTime(
                name: "Magrib",
                time: salat.margib.value,
                currentPrayer: salat.currentPrayer.value,
                mdw: mdw,
              ),
              _buildPrayerTime(
                name: "Isha",
                time: salat.isha.value,
                currentPrayer: salat.currentPrayer.value,
                mdw: mdw,
              ),
            ],
          );
        }),
      ),
    );
  }
  Widget _buildPrayerTime({
    required String name,
    required String time,
    required String currentPrayer,
    required double mdw,
  }) {
    final bool isCurrent = currentPrayer == name;
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(7),
      child: Column(
        children: [
          Text(
            name,
            style: TextStyle(
              fontSize: mdw * 0.06,
              fontWeight: FontWeight.bold,
              color: isCurrent ? Colors.black : Colors.grey,
            ),
          ),
          Text(
            time,
            style: TextStyle(
              fontSize: mdw * 0.051,
              color: isCurrent ? Colors.black : Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
