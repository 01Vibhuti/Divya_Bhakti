import 'package:divya_bhakti/app/Route/appRoute.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class starting_view extends StatelessWidget {
  const starting_view({super.key});

  @override
  Widget build(BuildContext context) {
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
        // backgroundColor:
        backgroundColor: Colors.transparent,
        // body: Container(
        //   width: Get.width,
        //   height: Get.height,
        //   decoration: BoxDecoration(
        //     borderRadius: BorderRadius.circular(
        //       20,
        //     ),
        //     gradient: LinearGradient(
        //       colors: [Colors.red],
        //     ),
        //   ),
        //   child: Column(

        //   ),
        // ),
        body: SafeArea(
          child: Opacity(
            opacity: 0.8,
            child: Container(
              height: Get.height,
              width: Get.width,
              margin: EdgeInsets.all(20),
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
                borderRadius: BorderRadius.circular(
                  20,
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      height: Get.height * 0.1,
                    ),
                    Container(
                      // width: Get.width * 0.4,
                      height: Get.height * 0.13,
                      child: Image(
                        image: AssetImage(
                          'assets/images/divya-bhakti-logo-[Recovered] (1) 1.png',
                        ),
                        fit: BoxFit.fill,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top: 12,
                      ),
                      child: Text(
                        'Welcome To Divya Bhakti',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white, fontSize: 34,fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      // margin: EdgeInsets.only(top: 1,),
                      child: Text(
                        'Create an account to start using Divya Bhakti\n counter and track your chanting.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top: 5,
                      ),
                      child: Text(
                        'It’s Free, Just for you, Forever ',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: Get.height * 0.15,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 12, bottom: 10),
                      child: Text(
                        'Build A Positive Habit',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white, fontSize: 32,fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      // width: Get.width * 0.4,
                      height: Get.height * 0.09,
                      child: Image(
                        image: AssetImage(
                          'assets/images/Zodiac.png',
                        ),
                        fit: BoxFit.fill,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top: 5,
                      ),
                      child: Text(
                        'View a real-time feed of mantras being\nchanted and a leaderboard of the top \nDivya Bhakti chantersof the week.  ',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: Get.height * 0.015,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            Get.toNamed(Routes.LOGIN_VIEW);
                          },
                          child: Container(
                            margin: EdgeInsets.all(5),
                            padding: EdgeInsets.symmetric(
                              horizontal: 15,
                              vertical: 10,
                            ),
                            decoration: BoxDecoration(
                              color: Color(
                                0xffDBB908,
                              ),
                              boxShadow: <BoxShadow>[
                                BoxShadow(
                                    color: Colors.black54,
                                    blurRadius: 15.0,
                                    offset: Offset(0.0, 0.75))
                              ],
                              borderRadius: BorderRadius.circular(
                                5,
                              ),
                            ),
                            child: Text(
                              'Login',
                              style: TextStyle(
                                color: Colors.white,fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Get.toNamed(Routes.SIGNUP_VIEW);
                          },
                          child: Container(
                            margin: EdgeInsets.all(5),
                            padding: EdgeInsets.symmetric(
                              horizontal: 15,
                              vertical: 10,
                            ),
                            decoration: BoxDecoration(
                              color: Color(
                                0xffD91309,
                              ),
                              boxShadow: <BoxShadow>[
                                BoxShadow(
                                    color: Colors.black54,
                                    blurRadius: 15.0,
                                    offset: Offset(0.0, 0.75))
                              ],
                              borderRadius: BorderRadius.circular(
                                5,
                              ),
                            ),
                            child: Text(
                              'Get Started',
                              style: TextStyle(
                                color: Colors.white,fontSize: 20
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
