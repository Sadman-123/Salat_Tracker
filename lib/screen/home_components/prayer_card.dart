import 'package:flutter/material.dart';
Widget PrayerCard(double mdw, double mdh) {
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
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      "Isha",
                      style: TextStyle(
                        fontSize: mdw * 0.12,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                        overflow: TextOverflow.ellipsis,
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
                    child: Text(
                      "7hrs 53 mins until Fajr",
                      style: TextStyle(
                        color: Color(0xFFf7f7f6),
                        fontSize: mdw * 0.038,
                        overflow: TextOverflow.ellipsis,
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
                        fontSize: mdw * 0.055,
                        color: Colors.black54,
                      ),
                    ),
                    Text(
                      "Iftar: 06:01 AM",
                      style: TextStyle(
                        fontSize: mdw * 0.055,
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Expanded(
              child: Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.only(left: mdw * 0.04),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Tuesday",
                          style: TextStyle(
                            fontSize: mdw * 0.065,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),
                        Text(
                          "(10/20/2023)",
                          style: TextStyle(
                            fontSize: mdw * 0.035,
                            color: Colors.grey[600],
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "Robi Al Awwal 13, 1446 AH",
                      style: TextStyle(
                        fontSize: mdw * 0.04,
                        color: Colors.black87,
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                    Text(
                      "Dhaka, Bangladesh",
                      style: TextStyle(
                        fontSize: mdw * 0.04,
                        color: Colors.black87,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
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

