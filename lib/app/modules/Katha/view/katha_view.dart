import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';

class Katha_view extends StatelessWidget {
  Katha_view({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height,
      width: Get.width,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xffecb033),
            Color(0xffeb7530),
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: SafeArea(
            child: Wrap(
              alignment: WrapAlignment.center,
              children: [
                DayWidget(callback: () {}, title: 'Day 0'),
                DayWidget(callback: () {}, title: 'Day 1'),
                DayWidget(callback: () {}, title: 'Day 2'),
                DayWidget(callback: () {}, title: 'Day 4'),
                DayWidget(callback: () {}, title: 'Day 5'),
                DayWidget(callback: () {}, title: 'Day 6'),
                DayWidget(callback: () {}, title: 'Day 7'),
                DayWidget(callback: () {}, title: 'Day 8'),
                DayWidget(callback: () {}, title: 'Day 9'),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget DayWidget({Callback? callback, String? title}) {
    return InkWell(
      onTap: callback,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        margin: EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 10,
        ),
        decoration: BoxDecoration(border: Border.all(color: Colors.redAccent)),
        height: Get.height * 0.1,
        child: Center(
          child: Text(
            '${title}',
            style: TextStyle(
                color: Colors.deepOrange,
                fontWeight: FontWeight.bold,
                fontSize: 20,
                wordSpacing: 2),
          ),
        ),
      ),
    );
  }
}
