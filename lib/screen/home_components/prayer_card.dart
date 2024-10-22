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
      color: Get.isDarkMode?Color(0xFF161f28):Color(0xFFf7f6f7),
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      shadowColor: Get.isDarkMode?Colors.black.withOpacity(0.4):Colors.white.withOpacity(0.4),
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
                               "${salat.currentPrayer}",
                               style: TextStyle(
                                 fontSize: mdw * 0.095, // Reduced size
                                 fontWeight: FontWeight.bold,//0xFF161f28 0xFFf7f6f7
                                 color: Get.isDarkMode?Color(0xFFf7f6f7):Color(0xFF161f28),
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
                               color: Get.isDarkMode?Color(0xFFf7f6f7):Color(0xFF161f28),
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
                             color: Get.isDarkMode?Color(0xFFf7f6f7):Color(0xFF161f28),
                           ),
                         ),
                         Text(
                           "Iftar: 06:01 PM", // Fixed Iftar time format
                           style: TextStyle(
                             fontSize: mdw * 0.05, // Adjusted font size
                             color: Get.isDarkMode?Color(0xFFf7f6f7):Color(0xFF161f28),
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
                             color: Get.isDarkMode?Color(0xFFf7f6f7):Color(0xFF161f28),
                           ),
                         ),),
                         Obx(()=>Text(
                           "(${salat.todaysDateNum})",
                           style: TextStyle(
                             fontSize: mdw * 0.035,//grey[600]
                             color: Get.isDarkMode?Color(0xFFf7f6f7):Color(0xFF161f28),
                           ),
                         ),)
                       ],
                     ),
                     Obx(()=>Text(
                       "${salat.isLamic}",
                       style: TextStyle(
                         fontSize: mdw * 0.04,
                         color: Get.isDarkMode?Color(0xFFf7f6f7):Color(0xFF161f28),
                       ),
                       overflow: TextOverflow.ellipsis,
                       maxLines: 1,
                     ),),
                     Obx(()=>Text(
                       "${salat.CountryState}",
                       style: TextStyle(
                         fontSize: mdw * 0.04,
                         color: Get.isDarkMode?Color(0xFFf7f6f7):Color(0xFF161f28),
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
