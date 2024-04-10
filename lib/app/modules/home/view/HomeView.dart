import 'package:divya_bhakti/app/Route/appRoute.dart';
import 'package:divya_bhakti/app/modules/Naam%20Jap/view/japa_view.dart';
import 'package:divya_bhakti/app/modules/global/appcolor.dart';
import 'package:divya_bhakti/app/modules/global/customBottomNavigationBar.dart';
import 'package:divya_bhakti/app/modules/global/global_button.dart';
import 'package:divya_bhakti/app/setting/view/setting_view.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';
import 'package:intl/intl.dart';

import '../../../Route/customRoute.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String formattedDate = "${DateFormat('EEEE').format(now)}, ${DateFormat('MMM dd').format(now)}";
    return Container(
      height: Get.height,
      width: Get.width,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              'assets/images/background 2.png',
            ),
            fit: BoxFit.fill),
      ),
      child: Scaffold(
        bottomNavigationBar: CustomBottomNavigationBar(context),
        backgroundColor: Colors.transparent,
        body: Opacity(
          opacity: 0.8,
          child: Container(
            height: Get.height,
            width: Get.width,
            // margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
              // color: Colors.red,
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromRGBO(251, 14, 2, 1),
                  Color(0xffC7451B),
                ],
              ),
            ),
            child: SingleChildScrollView(
              child: SafeArea(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      children: [
                        Text(
                          formattedDate,
                          style: TextStyle(
                            color: appcolor.yellowColor,
                          ),
                        ),
                        Spacer(),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.notifications,
                            size: 20,
                            color: appcolor.yellowColor,
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => SettingView()));
                          },
                          icon: Icon(
                            Icons.settings,
                            size: 20,
                            color: appcolor.yellowColor,
                          ),
                        ),
                      ],
                    ),
                    // image container
                    Material(
                      elevation: 5,
                      borderRadius: BorderRadius.circular(5),
                      child: Container(
                        height: Get.height * 0.2,
                        width: Get.width,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              'assets/images/background 2.png',
                            ),
                            fit: BoxFit.fill,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Jai Mata di',
                                  style: TextStyle(
                                    color: appcolor.yellowColor,
                                    fontSize: 24,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Aum Saravana Bhava',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                InkWell(
                                  onTap: (){
                                    Navigator.push(context, MaterialPageRoute(
                                        builder: (context) => JaapList()));
                                   // Get.toNamed(Routes.JapaView);
                                  },
                                  child: blockButton(
                                    title: 'Start Jap',
                                    fontsize: 16,
                                    backgroundColor: appcolor.redbutton,
                                    borderColor: appcolor.yellowColor,
                                    borderRadius: 3,
                                    // height: Get.height * 0.06,
                                    // width: Get.width * 0.1,
                                  ),
                                ),
                              ],
                            ).paddingOnly(left: 10, top: 20),
                            Container(
                              height: Get.height * 0.2,
                              child: Image(
                                image: AssetImage(
                                  'assets/images/mataji face.png',
                                ),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Your Insights',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ).paddingOnly(top: 15, bottom: 5, left: 10),
                    Container(
                      height: Get.height * 0.13,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          rowwidget(title: 'Japa Counts', count: '121'),
                          rowwidget(title: 'Japa Counts', count: '121'),
                          rowwidget(title: 'Japa Counts', count: '121'),
                        ],
                      ),
                    ),

                    blockButton(
                        title: 'View Insights',
                        fontsize: 16,
                        backgroundColor: appcolor.redbutton,
                        borderColor: appcolor.yellowColor,
                        borderRadius: 15,
                        // height: Get.height * 0.04,
                        width: Get.width * 0.3,
                        callback: (){
                          Get.toNamed(Routes.CountJapTakeInputview);
                        }
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'My Routines',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ).paddingOnly(top: 5, bottom: 2, left: 10),
                    Container(
                      height: Get.height * 0.10,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: Get.height * 0.08,
                            width: Get.width * 0.4,
                            decoration: BoxDecoration(
                              color: appcolor.redlow,
                              border: Border.all(
                                color: appcolor.yellowColor,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.calendar_month,
                                  color: appcolor.yellowColor,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'Add Routine',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'My Shortcuts',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ).paddingOnly(top: 5, bottom: 10, left: 10),
                    Container(
                      height: Get.height * 0.14,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: Get.height * 0.15,
                            width: Get.width * 0.4,
                            decoration: BoxDecoration(
                              color: appcolor.redlow,
                              border: Border.all(
                                color: appcolor.yellowColor,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                IconButton(
                                  // FontAwesomeIcons.calendar,
                                  color: appcolor.yellowColor, onPressed: () {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) => JaapList()));
                                }, icon: Icon(Icons.calendar_month),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Add Shortcuts',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width:10 ,),
                          Container(
                            height: Get.height * 0.15,
                            width: Get.width * 0.4,
                            decoration: BoxDecoration(
                              color: appcolor.redlow,
                              border: Border.all(
                                color: appcolor.yellowColor,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.calendar_month,
                                  color: appcolor.yellowColor,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Add Manual \nSession',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ).paddingSymmetric(
                  horizontal: 15,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Widget textfield({
  String? hintText,
  TextEditingController? controller,
  TextInputType? keyboardType,
  bool? showPassword,
  IconData? iconData,
  int? keyLength,
}) {
  return Container(
    width: Get.width * 0.75,
    child: Row(
      children: [
        Expanded(
          child: TextFormField(
            keyboardType: keyboardType,
            style: TextStyle(
              color: Colors.white,
            ),
            maxLength: keyLength,
            cursorColor: Colors.white,
            decoration: InputDecoration(
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.white,
                ),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.white,
                ),
              ),
              // counterStyle: TextStyle(color: Colors.white),
              counter: Offstage(),
              hintText: '${hintText}',
              hintStyle: TextStyle(
                color: Colors.white,
              ),
              contentPadding: EdgeInsets.symmetric(
                horizontal: 0,
              ),
            ),
          ),
        ),
        // Icon(iconData,),
      ],
    ),
  );
}

Widget button({
  String? title,
  IconData? icondata,
  Callback? callback,
  Color? iconcolor,
}) {
  return InkWell(
    onTap: callback,
    child: Container(
      margin: EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 10,
      ),
      decoration: BoxDecoration(
        color: Color(0xffFFD600),
        borderRadius: BorderRadius.circular(6),
      ),
      width: Get.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icondata,
            color: iconcolor,
            size: 20,
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            '$title',
            style: TextStyle(color: Colors.black),
          )
        ],
      ).paddingSymmetric(
        vertical: 5,
        horizontal: 10,
      ),
    ),
  );
}

Widget rowwidget({String? title, String? count}) {
  return Container(
    height: Get.height * 0.11,
    width: Get.width * 0.28,
    decoration: BoxDecoration(
      color: appcolor.redlow,
      border: Border.all(
        color: appcolor.yellowColor,
      ),
      borderRadius: BorderRadius.circular(20),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '${count}',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          '${title}',
          style: TextStyle(
            color: Colors.white,
            fontSize: 15,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    ),
  );
}
