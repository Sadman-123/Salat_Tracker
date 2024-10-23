import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salah_app/controller/salat_time_controller.dart';
import 'package:salah_app/custom_widgets/hadithcard.dart';
import 'package:salah_app/screen/home_components/appbar_part.dart';
import 'package:salah_app/screen/home_components/didyoupraymsg.dart';
import 'package:salah_app/screen/home_components/otherparts.dart';
import 'package:salah_app/screen/home_components/prayer_card.dart';
import 'package:salah_app/screen/home_components/salat_times.dart';
class Home extends StatelessWidget {
  final SalatTimeController salat = Get.find();
  @override
  Widget build(BuildContext context) {
    var mdw = MediaQuery.sizeOf(context).width;
    var mdh = MediaQuery.sizeOf(context).height;
    return Scaffold(
     body:  SingleChildScrollView(
       child: Obx(() {
         if (salat.isLoading.value) {
           return Container(
             alignment: Alignment.center,
             child: Center(child: CircularProgressIndicator()),
           );
         } else {
           return Container(
             margin: EdgeInsets.all(10),
             child: Column(
               children: [
                 SizedBox(height: mdh * 0.056),
                 AppbarPart(mdw, mdh),
                 PrayerCard(mdw: mdw, mdh: mdh),
                 SalatTimes(mdw: mdw, mdh: mdh),
                 Didyoupraymsg(mdw: mdw, mdh: mdh),
                 SizedBox(height: mdh * 0.0025),
                 Otherparts(mdw: mdw, mdh: mdh),
                 Hadithcard(mdw: mdw, mdh: mdh),
               ],
             ),
           );
         }
       }),
     ),
      floatingActionButton: FloatingActionButton(//0xFF142845
        backgroundColor: Get.isDarkMode?Color(0xFF142845):Color(0xFFc9cfd6),
        onPressed: () async {
          DateTime? selectedDate = await showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(2000),
            lastDate: DateTime(2101),
          );
          if (selectedDate != null) {
            salat.fetchPrayerTimesForSpecificDate(selectedDate);
          }
        },
        child: Icon(Icons.date_range,color: Get.isDarkMode?Color(0xFFf7f6f7):Color(0xFF161f28),),
      ),
      bottomNavigationBar: NavigationBar(
        backgroundColor: Get.isDarkMode?Color(0xFF142845):Color(0xFFf7f6f7),
        destinations: [
          NavigationDestination(icon: Icon(Icons.home), label: "Home"),
          NavigationDestination(icon: Icon(Icons.track_changes), label: "Tracker"),
          NavigationDestination(icon: Icon(Icons.library_books), label: "Books"),
          NavigationDestination(icon: Icon(Icons.settings), label: "Settings"),
        ],
      ),
    );
  }
}
