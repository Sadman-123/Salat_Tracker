import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salah_app/controller/salat_time_controller.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
class Hadithcard extends StatelessWidget {
  final double mdw, mdh;
  Hadithcard({super.key, required this.mdw, required this.mdh});
  final PageController _pageController = PageController();
  SalatTimeController salat=Get.find();
  @override
  Widget build(BuildContext context) {
    return Obx((){
      return Container(
        child: Column(
          children: [
            Container(
              height: mdh * 0.70,
              child: salat.hadiths.isEmpty
                  ? Center(child: CircularProgressIndicator())
                  : PageView(
                controller: _pageController,
                onPageChanged: (value) {
                  salat.current_page.value=value;
                },
                children: salat.hadiths
                    .map((hadith) => _Card(hadith['data']['book'], hadith['data']['hadith_english'], hadith['data']['refno']))
                    .toList(),
              ),
            ),
            SizedBox(height: mdh * 0.02),
            SmoothPageIndicator(
              controller: _pageController,
              count: 3, // Number of pages
              effect: WormEffect(
                dotHeight: 10,
                dotWidth: 10,
                activeDotColor: Color(0xFF142845),
                dotColor: Colors.grey,
              ),
            ),
            SizedBox(height: mdh * 0.02),
          ],
        ),
      );
    });
  }
  Widget _Card(String book, String hadith, String source) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.only(left: 5, right: 5),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xFF152945),
        borderRadius: BorderRadius.circular(14),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            book,
            style: TextStyle(
              fontSize: mdw * 0.067,
              fontWeight: FontWeight.bold,
              color: Color(0xFFfefeff),
            ),
          ),
          SizedBox(height: mdh * 0.02),
          Expanded(
            child: SingleChildScrollView(
              child: Text(
                hadith,
                style: TextStyle(
                  fontSize: mdw * 0.058,
                  color: Color(0xFFfefeff),
                ),
              ),
            ),
          ),
          SizedBox(height: mdh * 0.02),
          Text(
            source,
            style: TextStyle(
              fontSize: mdw * 0.058,
              color: Color(0xFFfefeff),
            ),
          ),
        ],
      ),
    );
  }
}
