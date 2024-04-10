import 'dart:developer';
import 'dart:math' as math;
import 'package:divya_bhakti/app/Route/appRoute.dart';
import 'package:divya_bhakti/app/modules/Naam%20Jap/controller/japaController.dart';
import 'package:divya_bhakti/app/modules/global/appcolor.dart';
import 'package:divya_bhakti/app/modules/global/customBottomNavigationBar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';
import 'package:intl/intl.dart';

class JapaView_duplicate extends StatefulWidget {
  JapaView_duplicate({super.key});

  @override
  State<JapaView_duplicate> createState() => _JapaView_duplicateState();
}

class _JapaView_duplicateState extends State<JapaView_duplicate>
    with TickerProviderStateMixin {
  Japacontroller controller = Get.put(Japacontroller());
  late final AnimationController animationController = AnimationController(
    vsync: this,
    duration: Duration(seconds: 15),
  )..repeat();

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String formattedDate = "${DateFormat('EEEE').format(now)}, ${DateFormat('MMM dd').format(now)}";
    return Container(
      height: Get.height,
      width: Get.width,
      decoration: BoxDecoration(
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
                    children: [
                      Row(
                        children: [
                          Text(
                            'Tuesday, Sept 25 ',
                            style: TextStyle(
                                color: appcolor.yellowColor,
                                fontWeight: FontWeight.bold),
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
                              Get.toNamed(Routes.SettingView);
                            },
                            icon: Icon(
                              Icons.settings,
                              size: 20,
                              color: appcolor.yellowColor,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 13),
                        width: double.infinity,
                        height: Get.height * 0.8,
                        child: Stack(
                          children: [
                            // main container
                            // this widget will be change everytime when page fills
                            Stack(
                              children: [
                                SizedBox(
                                  width: Get.width,
                                  height: Get.height * 0.85,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Color.fromARGB(255, 216, 183, 13),
                                    ),
                                  ),
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: Get.width * 0.08,
                                    ),
                                    Container(
                                      height: Get.height * 0.8,
                                      width: 2,
                                      color: Color(0xffbe1812),
                                    ),
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: Get.height * 0.06,
                                      child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(left: 15),
                                            child: Image(
                                              image: AssetImage(
                                                'assets/images/5-mukhi-rudraksh-japa-mala (1) 1.png',
                                              ),
                                            ),
                                          ),
                                          Text(
                                            'Jai Mata Di',
                                            style: TextStyle(
                                              color: Colors.red,
                                              fontSize: 18,
                                            ),
                                          ),
                                          IconButton(
                                            onPressed: () {},
                                            icon: Icon(
                                              Icons.share_outlined,
                                              size: 20,
                                              color: appcolor.redlow,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: Get.width,
                                      height: 1,
                                      decoration: BoxDecoration(
                                        color: Color(0xffbe1812),
                                      ),
                                    ),
                                    SizedBox(
                                      height: Get.height * 0.04,
                                    ),
                                    Container(
                                      width: Get.width,
                                      height: 1,
                                      decoration: BoxDecoration(
                                        color: Color(0xffbe1812),
                                      ),
                                    ),
                                    SizedBox(
                                      height: Get.height * 0.04,
                                    ),
                                    Container(
                                      width: Get.width,
                                      height: 1,
                                      decoration: BoxDecoration(
                                        color: Color(0xffbe1812),
                                      ),
                                    ),
                                    SizedBox(
                                      height: Get.height * 0.04,
                                    ),
                                    Container(
                                      width: Get.width,
                                      height: 1,
                                      decoration: BoxDecoration(
                                        color: Color(0xffbe1812),
                                      ),
                                    ),
                                    SizedBox(
                                      height: Get.height * 0.04,
                                    ),
                                    Container(
                                      width: Get.width,
                                      height: 1,
                                      decoration: BoxDecoration(
                                        color: Color(0xffbe1812),
                                      ),
                                    ),
                                    SizedBox(
                                      height: Get.height * 0.04,
                                    ),
                                    Container(
                                      width: Get.width,
                                      height: 1,
                                      decoration: BoxDecoration(
                                        color: Color(0xffbe1812),
                                      ),
                                    ),
                                    SizedBox(
                                      height: Get.height * 0.04,
                                    ),
                                    Container(
                                      width: Get.width,
                                      height: 1,
                                      decoration: BoxDecoration(
                                        color: Color(0xffbe1812),
                                      ),
                                    ),
                                    SizedBox(
                                      height: Get.height * 0.04,
                                    ),
                                    Container(
                                      width: Get.width,
                                      height: 1,
                                      decoration: BoxDecoration(
                                        color: Color(0xffbe1812),
                                      ),
                                    ),
                                    SizedBox(
                                      height: Get.height * 0.04,
                                    ),
                                    Container(
                                      width: Get.width,
                                      height: 1,
                                      decoration: BoxDecoration(
                                        color: Color(0xffbe1812),
                                      ),
                                    ),
                                    SizedBox(
                                      height: Get.height * 0.04,
                                    ),
                                    Container(
                                      width: Get.width,
                                      height: 1,
                                      decoration: BoxDecoration(
                                        color: Color(0xffbe1812),
                                      ),
                                    ),
                                    SizedBox(
                                      height: Get.height * 0.04,
                                    ),
                                    Container(
                                      width: Get.width,
                                      height: 1,
                                      decoration: BoxDecoration(
                                        color: Color(0xffbe1812),
                                      ),
                                    ),
                                    SizedBox(
                                      height: Get.height * 0.04,
                                    ),
                                    Container(
                                      width: Get.width,
                                      height: 1,
                                      decoration: BoxDecoration(
                                        color: Color(0xffbe1812),
                                      ),
                                    ),
                                    SizedBox(
                                      height: Get.height * 0.04,
                                    ),
                                    Container(
                                      width: Get.width,
                                      height: 1,
                                      decoration: BoxDecoration(
                                        color: Color(0xffbe1812),
                                      ),
                                    ),
                                    SizedBox(
                                      height: Get.height * 0.04,
                                    ),
                                    Container(
                                      width: Get.width,
                                      height: 1,
                                      decoration: BoxDecoration(
                                        color: Color(0xffbe1812),
                                      ),
                                    ),
                                    SizedBox(
                                      height: Get.height * 0.04,
                                    ),
                                    Container(
                                      width: Get.width,
                                      height: 1,
                                      decoration: BoxDecoration(
                                        color: Color(0xffbe1812),
                                      ),
                                    ),
                                    SizedBox(
                                      height: Get.height * 0.04,
                                    ),
                                    Container(
                                      width: Get.width,
                                      height: 1,
                                      decoration: BoxDecoration(
                                        color: Color(0xffbe1812),
                                      ),
                                    ),
                                    SizedBox(
                                      height: Get.height * 0.04,
                                    ),
                                    Container(
                                      width: Get.width,
                                      height: 2,
                                      decoration: BoxDecoration(
                                        color: Color(0xffbe1812),
                                      ),
                                    ),
                                    // button container
                                  ],
                                ),
                                Wrap(
                                  children: controller.list,
                                ).paddingOnly(left: 35, top: 53),
                              ],
                            ),
                            AnimatedBuilder(
                              builder: (BuildContext context, Widget? mychild) {
                                return Transform.rotate(
                                  angle:
                                  animationController.value * 2.0 * math.pi,
                                  child: mychild,
                                );
                              },
                              animation: animationController,
                              child: Container(
                                height: Get.height * 0.8,
                                width: Get.width,
                                child: Image(
                                  image: AssetImage(
                                    'assets/images/image 1.png',
                                  ),
                                ),
                              ),
                            ),

                            // button container
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 8, bottom: 8),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        width: Get.width * 0.1,
                                      ),
                                      InkWell(
                                        onTap: () {},
                                        child: Container(
                                          padding: EdgeInsets.symmetric(
                                            horizontal: 20,
                                          ),
                                          decoration: BoxDecoration(
                                            color: appcolor.redlow,
                                            border: Border.all(
                                              color: appcolor.yellowColor,
                                            ),
                                            borderRadius:
                                            BorderRadius.circular(5),
                                          ),
                                          child: Column(
                                            mainAxisAlignment:
                                            MainAxisAlignment.center,
                                            children: [
                                              Obx(() {
                                                return Text(
                                                  '${controller.Japacounter.value}',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 20,
                                                  ),
                                                  textAlign: TextAlign.center,
                                                );
                                              }),
                                              Text(
                                                'Counts',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 15,
                                                ),
                                                textAlign: TextAlign.center,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Spacer(),
                                      InkWell(
                                        onTap: () {
                                          log('hii all');
                                          controller.increaseJapaCounter();
                                          setState(() {});
                                        },
                                        child: Container(
                                          margin: EdgeInsets.only(right: 10),
                                          padding: EdgeInsets.symmetric(
                                            horizontal: 20,
                                            vertical: 10,
                                          ),
                                          decoration: BoxDecoration(
                                            color: appcolor.redlow,
                                            border: Border.all(
                                              color: appcolor.yellowColor,
                                            ),
                                            borderRadius:
                                            BorderRadius.circular(5),
                                          ),
                                          child: Column(
                                            mainAxisAlignment:
                                            MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                'जय माता दी',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 15,
                                                ),
                                                textAlign: TextAlign.center,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ]).paddingSymmetric(
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

Widget rowwidget({String? title, String? count, Callback? callback}) {
  return InkWell(
    onTap: callback,
    child: Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20,
      ),
      decoration: BoxDecoration(
        color: appcolor.redlow,
        border: Border.all(
          color: appcolor.yellowColor,
        ),
        borderRadius: BorderRadius.circular(5),
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
    ),
  );
}
