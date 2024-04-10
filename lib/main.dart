import 'package:divya_bhakti/app/Route/appPages.dart';
import 'package:divya_bhakti/app/Route/appRoute.dart';
import 'package:divya_bhakti/app/modules/splash_screen/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  // niche vala splash screen k liye h 
  
  runApp(Divya_Bhakti());
  // Future.delayed(Duration(seconds: 1)).then((value) {
  //   FlutterNativeSplash.remove();

  // });
}

class Divya_Bhakti extends StatelessWidget {
  const Divya_Bhakti({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        fontFamily: 'Imprima'
      ),
      debugShowCheckedModeBanner: false,
      getPages: appPages.route,
      home: Splash_Screen(),

      initialRoute: Routes.JapaView,
      defaultTransition: Transition.rightToLeftWithFade,
      transitionDuration:Duration(seconds: 1),
    );
  }
}
