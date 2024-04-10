// import 'dart:async';
// import 'dart:developer';
// import 'package:divya_bhakti/app/Route/appRoute.dart';
// import 'package:divya_bhakti/app/modules/global/appcolor.dart';
// import 'package:divya_bhakti/app/modules/global/customBottomNavigationBar.dart';
// import 'package:divya_bhakti/app/modules/global/pageflip.dart';
// import 'package:intl/intl.dart';
// import '../controller/japaController.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// class JapaView extends StatefulWidget {
//   JapaView({super.key});
//
//   @override
//   State<JapaView> createState() => _JapaViewState();
// }
//
// class _JapaViewState extends State<JapaView> with TickerProviderStateMixin {
//   Japacontroller controller = Get.put(Japacontroller());
//   final pageflipcontroller = GlobalKey<PageFlipWidgetState>();
//   late final AnimationController animationController = AnimationController(
//     vsync: this,
//     duration: Duration(seconds: 15),
//   )..repeat();
//
//   @override
//   void initState() {
//     // TODO: implement initState
//     // controller.pageList.add(controller.pageWidget());
//     super.initState();
//   }
//
//   // RxList<Widget> pageList = <Widget>[
//   //   pageWidget(),
//   //   pageWidget(),
//   //   pageWidget(),
//   // ].obs;
//   // RxList<Widget> list = <Widget>[].obs;
//   // RxInt currentIndex = 0.obs;
//   // RxInt Japacounter = 0.obs;
//   // bool increaseJapaCounter() {
//   //   Japacounter.value++;
//   //   currentIndex.value++;
//   //   if (currentIndex.value > 2) {
//   //     pageList[pageList.length - 1] = pageWidgetwithText();
//   //     pageList.add(pageWidget());
//   //     list.clear();
//   //     currentIndex.value = 0;
//   //     setState(() {});
//   //     return true;
//   //   }
//   //   list.add(jaiMataDi_widget());
//   //   setState(() {});
//   //   return false;
//   // }
//
//   @override
//   Widget build(BuildContext context) {
//     DateTime now = DateTime.now();
//     String formattedDate = "${DateFormat('EEEE').format(now)}, ${DateFormat('MMM dd').format(now)}";
//     // print(controller.pageList.length.toString());
//
//     return Container(
//       height: Get.height,
//       width: Get.width,
//       decoration: BoxDecoration(
//         image: DecorationImage(
//             image: AssetImage(
//               'assets/images/background 2.png',
//             ),
//             fit: BoxFit.fill),
//       ),
//       child: Scaffold(
//         // floatingActionButton: FloatingActionButton(
//         //   onPressed: () {
//         //     controller.gotoLastPage(
//         //         controller.pageList.length -
//         //             pageflipcontroller.currentState!.pageNumber -
//         //             1,
//         //         pageflipcontroller);
//         //     // controller.turnPagecount(2, pageflipcontroller);
//         //     setState(() {});
//         //   },
//         // ),
//         bottomNavigationBar: CustomBottomNavigationBar(context),
//         backgroundColor: Colors.transparent,
//         body: Opacity(
//           opacity: 0.4,
//           child: Container(
//             height: Get.height,
//             width: Get.width,
//             // margin: EdgeInsets.all(20),
//             decoration: BoxDecoration(
//               // color: Colors.red,
//               gradient: LinearGradient(
//                 begin: Alignment.topCenter,
//                 end: Alignment.bottomCenter,
//                 colors: [
//                   Color.fromRGBO(251, 14, 2, 1),
//                   Color(0xffC7451B),
//                 ],
//               ),
//             ),
//             child: SingleChildScrollView(
//               child: SafeArea(
//                 child: GetBuilder(
//                   init: controller,
//                   builder: (value) {
//                     return Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Row(
//                             children: [
//                               Text(
//                                 formattedDate,
//                                 style: TextStyle(
//                                     color: appcolor.yellowColor,
//                                     fontWeight: FontWeight.bold),
//                               ),
//                               Spacer(),
//                               IconButton(
//                                 onPressed: () {},
//                                 icon: Icon(
//                                   Icons.notifications,
//                                   size: 20,
//                                   color: appcolor.yellowColor,
//                                 ),
//                               ),
//                               IconButton(
//                                 onPressed: () {
//                                   Get.toNamed(Routes.SettingView);
//                                 },
//                                 icon: Icon(
//                                   Icons.settings,
//                                   size: 20,
//                                   color: appcolor.yellowColor,
//                                 ),
//                               ),
//                             ],
//                           ),
//                           Container(
//                             margin: EdgeInsets.fromLTRB(0, 0, 0, 13),
//                             width: double.infinity,
//                             height: Get.height * 0.8,
//                             child: Stack(
//                               children: [
//                                 // main container
//                                 // this widget will be change everytime when page fills
//
//                                 PageFlipWidget(
//                                   key: pageflipcontroller,
//                                   duration: Duration(seconds: 0),
//
//                                   // lastPage: controller.pageList[controller.pageList.length-1] ,
//                                   children: value.pageList,
//                                 ),
//
//                                 Wrap(
//                                   children: value.list,
//                                 ).paddingOnly(left: 35, top: 53),
//
//                                 // AnimatedBuilder(
//                                 //   builder:
//                                 //       (BuildContext context, Widget? mychild) {
//                                 //     return Transform.rotate(
//                                 //       angle: animationController.value *
//                                 //           2.0 *
//                                 //           math.pi,
//                                 //       child: mychild,
//                                 //     );
//                                 //   },
//                                 //   animation: animationController,
//                                 //   child: Container(
//                                 //     height: Get.height * 0.8,
//                                 //     width: Get.width,
//                                 //     child: Image(
//                                 //       image: AssetImage(
//                                 //         'assets/images/image 1.png',
//                                 //       ),
//                                 //     ),
//                                 //   ),
//                                 // ),
//                                 Center(
//                                     child: Text(
//                                         '${pageflipcontroller.currentState?.pageNumber.toString()}',
//                                         style: TextStyle(
//                                             color: Colors.black,
//                                             fontSize: 30))),
//
//                                 // button container
//                                 Column(
//                                   mainAxisAlignment: MainAxisAlignment.end,
//                                   children: [
//                                     Container(
//                                       margin:
//                                       EdgeInsets.only(top: 8, bottom: 8),
//                                       child: Row(
//                                         mainAxisAlignment:
//                                         MainAxisAlignment.start,
//                                         children: [
//                                           SizedBox(
//                                             width: Get.width * 0.1,
//                                           ),
//                                           InkWell(
//                                             onTap: () {
//                                               pageflipcontroller.currentState!
//                                                   .turnPage(
//                                                   DragUpdateDetails(
//                                                       globalPosition:
//                                                       Offset(200, 0)),
//                                                   BoxConstraints(
//                                                       maxHeight: 100,
//                                                       maxWidth: 100));
//                                               pageflipcontroller.currentState!
//                                                   .previousPage();
//                                               setState(() {});
//                                             },
//                                             child: Container(
//                                               padding: EdgeInsets.symmetric(
//                                                 horizontal: 20,
//                                               ),
//                                               decoration: BoxDecoration(
//                                                 color: appcolor.redlow,
//                                                 border: Border.all(
//                                                   color: appcolor.yellowColor,
//                                                 ),
//                                                 borderRadius:
//                                                 BorderRadius.circular(5),
//                                               ),
//                                               child: Column(
//                                                 mainAxisAlignment:
//                                                 MainAxisAlignment.center,
//                                                 children: [
//                                                   Obx(() {
//                                                     return Text(
//                                                       '${value.Japacounter.value}',
//                                                       style: TextStyle(
//                                                         color: Colors.white,
//                                                         fontSize: 20,
//                                                       ),
//                                                       textAlign:
//                                                       TextAlign.center,
//                                                     );
//                                                   }),
//                                                   Text(
//                                                     'Counts',
//                                                     style: TextStyle(
//                                                       color: Colors.white,
//                                                       fontSize: 15,
//                                                     ),
//                                                     textAlign: TextAlign.center,
//                                                   ),
//                                                 ],
//                                               ),
//                                             ),
//                                           ),
//                                           Spacer(),
//                                           InkWell(
//                                             onTap: () {
//                                               bool isturn =
//                                               value.increaseJapaCounter();
//
//                                               pageflipcontroller.currentState!
//                                                   .setUp();
//                                               pageflipcontroller.currentState!
//                                                   .setState(() {});
//
//                                               if (isturn == true) {
//                                                 Future.delayed(
//                                                     Duration(seconds: 2));
//
//                                                 pageflipcontroller.currentState!
//                                                     .turnPage(
//                                                     DragUpdateDetails(
//                                                         globalPosition:
//                                                         Offset(200, 0)),
//                                                     BoxConstraints(
//                                                         maxHeight: 100,
//                                                         maxWidth: 100));
//                                                 pageflipcontroller.currentState!
//                                                     .nextPage();
//
//                                                 // pageflipcontroller.currentState!.goToPage(value.pageNumber.value);
//                                                 log('Page turned');
//                                               }
//                                               // pageflipcontroller.currentState!
//                                               //     .setState(() {});
//                                               Future.delayed(
//                                                   Duration(seconds: 2));
//                                               controller.gotoLastPage(
//                                                   controller.currentPageNumber -
//                                                       pageflipcontroller
//                                                           .currentState!
//                                                           .pageNumber-1,
//                                                   pageflipcontroller);
//                                               setState(() {});
//                                             },
//                                             child: Container(
//                                               margin:
//                                               EdgeInsets.only(right: 10),
//                                               padding: EdgeInsets.symmetric(
//                                                 horizontal: 20,
//                                                 vertical: 10,
//                                               ),
//                                               decoration: BoxDecoration(
//                                                 color: appcolor.redlow,
//                                                 border: Border.all(
//                                                   color: appcolor.yellowColor,
//                                                 ),
//                                                 borderRadius:
//                                                 BorderRadius.circular(5),
//                                               ),
//                                               child: Column(
//                                                 mainAxisAlignment:
//                                                 MainAxisAlignment.center,
//                                                 children: [
//                                                   Text(
//                                                     'जय माता दी',
//                                                     style: TextStyle(
//                                                       color: Colors.white,
//                                                       fontSize: 15,
//                                                     ),
//                                                     textAlign: TextAlign.center,
//                                                   ),
//                                                 ],
//                                               ),
//                                             ),
//                                           ),
//                                         ],
//                                       ),
//                                     ),
//                                   ],
//                                 )
//                               ],
//                             ),
//                           ),
//                         ]).paddingSymmetric(
//                       horizontal: 15,
//                     );
//                   },
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
