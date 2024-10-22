import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salah_app/controller/salat_time_controller.dart';

class PrayerCard extends StatelessWidget {
  final double mdw, mdh;
  PrayerCard({super.key, required this.mdw, required this.mdh});
  SalatTimeController salat = Get.find();

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      shadowColor: Colors.grey.withOpacity(0.4),
      child: Padding(
        padding: EdgeInsets.all(mdw * 0.02),
        child: Container(
          height: mdh * 0.24,
          child: Row(
            children: [
              Flexible(
                flex: 1,
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: mdh * 0.01),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Obx(
                                  () => Text(
                                "${salat.nextPrayer}",
                                style: TextStyle(
                                  fontSize: mdw * 0.1, // Reduced size
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black87,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                softWrap: false,
                              ),
                            ),
                          ),
                          SizedBox(width: 8),
                          Container(
                            width: mdw * 0.035,
                            height: mdw * 0.035,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.green.shade400,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: mdh * 0.04,
                        padding: EdgeInsets.symmetric(horizontal: 6, vertical: 4),
                        decoration: BoxDecoration(
                          color: Color(0xFF142845),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Center(
                          child: Obx(
                                () => Text(
                              "${salat.timeUntilNextPrayer} until ${salat.nextPrayer}",
                              style: TextStyle(
                                color: Color(0xFFf7f7f6),
                                fontSize: mdw * 0.038,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: mdh * 0.012),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Suhur: 4:27 AM",
                            style: TextStyle(
                              fontSize: mdw * 0.05, // Adjusted font size
                              color: Colors.black54,
                            ),
                          ),
                          Text(
                            "Iftar: 06:01 PM", // Fixed Iftar time format
                            style: TextStyle(
                              fontSize: mdw * 0.05, // Adjusted font size
                              color: Colors.black54,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(width: mdw * 0.04),
              Expanded(
                flex: 1,
                child: Container(
                  alignment: Alignment.topLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Obx(()=>Text(
                            "${salat.todaysDate}",
                            style: TextStyle(
                              fontSize: mdw * 0.06,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                            ),
                          ),),
                          Obx(()=>Text(
                            "(${salat.todatsDateNum})",
                            style: TextStyle(
                              fontSize: mdw * 0.035,
                              color: Colors.grey[600],
                            ),
                          ),)
                        ],
                      ),
                      Obx(()=>Text(
                        "${salat.isLamic}",
                        style: TextStyle(
                          fontSize: mdw * 0.04,
                          color: Colors.black87,
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),),
                      Obx(()=>Text(
                        "${salat.CountryState}",
                        style: TextStyle(
                          fontSize: mdw * 0.04,
                          color: Colors.black87,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),)
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
