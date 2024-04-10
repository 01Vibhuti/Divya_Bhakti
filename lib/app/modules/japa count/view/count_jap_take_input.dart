//
// import 'package:divya_bhakti/app/Route/appRoute.dart';
// import 'package:divya_bhakti/app/modules/global/appcolor.dart';
// import 'package:divya_bhakti/app/modules/global/audioplayers.dart';
// import 'package:divya_bhakti/app/modules/global/customBottomNavigationBar.dart';
//
// import 'package:flutter/material.dart';
//
// import 'package:get/get.dart';
//
//
// class Count_jap_take_input_view extends StatefulWidget {
//   Count_jap_take_input_view({super.key});
//
//   @override
//   State<Count_jap_take_input_view> createState() =>
//       _Count_jap_take_input_viewState();
// }
//
// class _Count_jap_take_input_viewState extends State<Count_jap_take_input_view>
//     with TickerProviderStateMixin {
//   TextEditingController inputcontroller = TextEditingController();
//   int input = 0;
//   @override
//   void initState() {
//     // TODO: implement initState
//
//     super.initState();
//   }
//
//   Audio_player audiocontroller = Get.put(Audio_player());
//
//   @override
//   Widget build(BuildContext context) {
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
//         bottomNavigationBar: CustomBottomNavigationBar(context),
//         backgroundColor: Colors.transparent,
//         body: Opacity(
//           opacity: 0.8,
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
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     SizedBox(
//                       height: 100,
//                     ),
//                     Container(
//                       decoration: BoxDecoration(
//                         color: Colors.black,
//                         border: Border.all(
//                           color: appcolor.yellowColor,
//                         ),
//                         borderRadius: BorderRadius.circular(
//                           10,
//                         ),
//                       ),
//                       width: Get.width * 0.7,
//                       child: TextFormField(
//                         decoration: InputDecoration(
//                           contentPadding: EdgeInsets.symmetric(horizontal: 15),
//                         ),
//                         style: TextStyle(color: Colors.white),
//                         controller: inputcontroller,
//                         onChanged: (value) {
//                           setState(() {
//                             input = int.parse(value);
//                           });
//                         },
//                       ),
//                     ),
//                     ElevatedButton(
//                       onPressed: () {
//                         // audiocontroller.playAudiotime(input);
//                         Get.toNamed(Routes.CountJapView);
//                       },
//                       child: Text(
//                         'set counter',
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
