import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:intl/intl.dart';
class SalatTimeController extends GetxController {
  RxString currentPrayer = "".obs;
  RxString nextPrayer = "".obs;
  RxString timeUntilNextPrayer = "".obs;
  RxString todaysDate="".obs;
  RxString todatsDateNum="".obs;
  RxString isLamic="".obs;
  RxString CountryState="".obs;
  @override
  void onInit() {
    super.onInit();
    fetchPrayerTimes();
  }
  Future<void> fetchPrayerTimes() async {
    final DateTime now = DateTime.now();
    final String apiUrl =
        'https://api.aladhan.com/v1/calendar/${now.year}/${now.month}?latitude=23.8103&longitude=90.4125&method=2';
    final response = await http.get(Uri.parse(apiUrl));

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      final dayData = data['data'][now.day - 1]['timings'];
      var xx = data['data'][now.day - 1]['meta']['timezone'];
      CountryState.value=xx.toString().split('/')[1];
      todatsDateNum.value=data['data'][now.day-1]['date']['gregorian']['date'];
      isLamic.value=data['data'][now.day-1]['date']['hijri']['month']['en'];
      todaysDate.value=data['data'][now.day-1]['date']['gregorian']['weekday']['en'];
      final DateFormat dateFormat = DateFormat('HH:mm');
      final DateTime currentTime = DateTime.now();
      final DateTime fajrTime = _parsePrayerTime(dayData['Fajr'], now);
      final DateTime dhuhrTime = _parsePrayerTime(dayData['Dhuhr'], now);
      final DateTime asrTime = _parsePrayerTime(dayData['Asr'], now);
      final DateTime maghribTime = _parsePrayerTime(dayData['Maghrib'], now);
      final DateTime ishaTime = _parsePrayerTime(dayData['Isha'], now);
      if (currentTime.isBefore(fajrTime)) {
        currentPrayer.value = "None (before Fajr)";
        nextPrayer.value = "Fajr";
        timeUntilNextPrayer.value = _formatTimeDifference(currentTime, fajrTime);
      } else if (currentTime.isBefore(dhuhrTime)) {
        currentPrayer.value = "Fajr";
        nextPrayer.value = "Dhuhr";
        timeUntilNextPrayer.value = _formatTimeDifference(currentTime, dhuhrTime);
      } else if (currentTime.isBefore(asrTime)) {
        currentPrayer.value = "Dhuhr";
        nextPrayer.value = "Asr";
        timeUntilNextPrayer.value = _formatTimeDifference(currentTime, asrTime);
      } else if (currentTime.isBefore(maghribTime)) {
        currentPrayer.value = "Asr";
        nextPrayer.value = "Maghrib";
        timeUntilNextPrayer.value = _formatTimeDifference(currentTime, maghribTime);
      } else if (currentTime.isBefore(ishaTime)) {
        currentPrayer.value = "Maghrib";
        nextPrayer.value = "Isha";
        timeUntilNextPrayer.value = _formatTimeDifference(currentTime, ishaTime);
      } else {
        currentPrayer.value = "Isha";
        nextPrayer.value = "Fajr (next day)";
        timeUntilNextPrayer.value = _formatTimeDifference(currentTime, fajrTime.add(Duration(days: 1)));
      }
    } else {
      throw Exception('Failed to load prayer times');
    }
  }
  DateTime _parsePrayerTime(String timeString, DateTime referenceDate) {
    final DateFormat dateFormat = DateFormat('HH:mm');
    final DateTime parsedTime = dateFormat.parse(timeString);
    return DateTime(referenceDate.year, referenceDate.month, referenceDate.day, parsedTime.hour, parsedTime.minute);
  }
  String _formatTimeDifference(DateTime current, DateTime next) {
    final Duration difference = next.difference(current);
    final int hours = difference.inHours;
    final int minutes = difference.inMinutes % 60;
    return '${hours}h ${minutes}m';
  }
}