// import 'package:divya_bhakti/app/modules/global/audioplayers.dart';
// import 'package:divya_bhakti/app/modules/Aarti/controller/aarti_controller.dart';
// import 'package:divya_bhakti/app/modules/DetailAudioView/Detail_audio_view.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';
//
// class Aarti_view extends StatelessWidget {
//   Aarti_view({super.key});
//   aarti_controller controller = Get.put(aarti_controller());
//   final player = Audio_player();
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: Get.height,
//       width: Get.width,
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           begin: Alignment.topCenter,
//           end: Alignment.bottomCenter,
//           colors: [
//             Color(0xffecb033),
//             Color(0xffeb7530),
//           ],
//         ),
//       ),
//       child: Scaffold(
//         backgroundColor: Colors.transparent,
//         body: SingleChildScrollView(
//           child: SafeArea(
//             child: Wrap(
//               alignment: WrapAlignment.center,
//               children: List.generate(
//                 controller.aartiList.length,
//                 (index) => DayWidget(
//                     callback: () {
//                       Get.to(detail_audio_view(
//                         audioList: controller.aartiList[index],
//                       ));
//                     },
//                     title: 'Day ${index+1}'),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//
//   Widget DayWidget({Callback? callback, String? title}) {
//     return InkWell(
//       onTap: callback,
//       child: Container(
//         padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
//         margin: EdgeInsets.symmetric(
//           horizontal: 10,
//           vertical: 10,
//         ),
//         decoration: BoxDecoration(border: Border.all(color: Colors.redAccent)),
//         height: Get.height * 0.1,
//         child: Center(
//           child: Text(
//             '${title}',
//             style: TextStyle(
//                 color: Colors.deepOrange,
//                 fontWeight: FontWeight.bold,
//                 fontSize: 20,
//                 wordSpacing: 2),
//           ),
//         ),
//       ),
//     );
//   }
// }
