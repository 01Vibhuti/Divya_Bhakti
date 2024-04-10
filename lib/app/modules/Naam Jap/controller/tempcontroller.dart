import 'dart:developer';
import 'package:divya_bhakti/app/modules/global/appcolor.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Japacontroller extends GetxController {
  RxList<Widget> list = <Widget>[].obs;
  RxList<Widget> pageList= <Widget>[].obs;

  RxInt Japacounter = 0.obs;
  void increaseJapaCounter() {
    Japacounter.value++;
    log(Japacounter.value.toString());
    list.add(jaiMataDi_widget());
  }
}

Widget jaiMataDi_widget() {
  return Container(
    padding: EdgeInsets.only(bottom: 9, left: 10),
    child: Text(
      'जय माता दी',
      style: TextStyle(
        color: appcolor.redbutton,
        fontSize: 18,
      ),
      textAlign: TextAlign.center,
    ),
  );
}
