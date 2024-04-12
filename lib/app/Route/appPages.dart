import 'package:divya_bhakti/app/Route/appRoute.dart';
import 'package:divya_bhakti/app/Route/customRoute.dart';
import 'package:divya_bhakti/app/modules/home/view/HomeView.dart';
import 'package:divya_bhakti/app/modules/Naam%20Jap/view/japa_view.dart';
import 'package:divya_bhakti/app/modules/japa%20count/view/count_jap_take_input.dart';
import 'package:divya_bhakti/app/modules/japa%20count/view/count_jap_view.dart';
import 'package:divya_bhakti/app/setting/view/setting_view.dart';
import 'package:divya_bhakti/app/ui/login_view.dart';
import 'package:divya_bhakti/app/ui/signup_view.dart';
import 'package:divya_bhakti/app/ui/starting_view.dart';
import 'package:get/get.dart';
import '../modules/splash_screen/splash_screen.dart';

class appPages {
  static final route = [
    GetPage(
      name: Routes.SPLASHSCREEN,
      page: () => SplashScreen(),
    ),
    GetPage(
      name: Routes.STARTING_VIEW,
      page: () => StartingView(),
    ),
    GetPage(
      name: Routes.SIGNUP_VIEW,
      page: () => SignupView(),
    ),
    // GetPage(
    //   name: Routes.SIGNUP_VIEW,
    //   page: () => signup_view(),
    // ),
    GetPage(
      name: Routes.LOGIN_VIEW,
      page: () => LoginView(),
    ),
    GetPage(
      name: Routes.HomeView,
      page: () => HomeView(),
    ),
    GetPage(
      name: Routes.JapaView,
      page: () => JaapList(),
    ),
    GetPage(
      name: Routes.SettingView,
      page: () => SettingView(),
    ),
    // GetPage(
    //   name: Routes.CountJapTakeInputview,
    //   page: () => Count_jap_take_input_view(),
    // ),
    GetPage(
      name: Routes.CountJapView,
      page: () => CountJapView(),
    ),
  ];
}
