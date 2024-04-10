import 'dart:async';

import 'package:divya_bhakti/app/Route/appRoute.dart';
import 'package:divya_bhakti/app/Route/customRoute.dart';
import 'package:divya_bhakti/app/modules/global/audioplayers.dart';
import 'package:divya_bhakti/app/modules/home/view/HomeView.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Splash_Screen extends StatefulWidget {
  const Splash_Screen({super.key});

  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {
  @override
  void initState() {
    // TODO: implement initState
    // Audio_player audiocontroller = Audio_player();

    // audiocontroller.playAudiotime(10);
    Timer(Duration(seconds: 3), () {
      Get.offNamed(Routes.STARTING_VIEW);
    });
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: Get.height,
      width: Get.width,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              'assets/images/Splash Screen.png',
            ),
            fit: BoxFit.fill),
      ),
    ));
  }
}
