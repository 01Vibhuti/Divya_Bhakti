// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:get/get.dart';
// import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';
//
// Widget CustomBottomNavigationBar() {
//   return Container(
//     decoration: BoxDecoration(
//       image: DecorationImage(
//         image: AssetImage(
//           'assets/images/bottom2.png',
//         ),
//         fit: BoxFit.fill,
//       ),
//     ),
//     height: Get.height * 0.07,
//     width: Get.width,
//     child: Center(
//       child: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Row(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//
//             bottombarWidget(
//               title: 'Home',
//               icondata_border: Icons.home_outlined,
//               iconData: Icons.home,
//             ),
//             bottombarWidget(
//               title: 'Search',
//               icondata_border: Icons.search_outlined,
//               iconData: Icons.search,
//             ),
//             // ImageIcon(
//             //   AssetImage( 'assets/images/ivya-bhakti-logo-[Recovered] (1) 1.png'), // AssetImage is an ImageProvider
//             //   // size: 100,
//             //   // color: Colors.blue,
//             // ),
//             Container(
//               child: Image(
//                 image: AssetImage(
//                     'assets/images/divya-bhakti-logo-[Recovered] (1) 1.png'),
//               ),
//               height: 35,
//             ),
//             bottombarWidget(
//               title: 'Community',
//               icondata_border: FontAwesomeIcons.globe,
//               iconData: FontAwesomeIcons.earth,
//             ),
//             bottombarWidget(
//               title: 'History',
//               icondata_border: Icons.history_outlined,
//               iconData: Icons.history,
//             )
//           ],
//         ),
//       ),
//     ),
//   );
// }
//
// Widget bottombarWidget({
//   String? title,
//   IconData? iconData,
//   IconData? icondata_border,
//   Color? iconColor,
//   Callback? callback,
// }) {
//   return InkWell(
//     onTap: callback,
//     child: Column(
//       children: [
//         Stack(
//           children: [
//             Icon(
//               iconData,
//               color: Colors.red,
//               size: 20,
//             ),
//             Icon(
//               icondata_border,
//               color: Colors.yellow,
//               size: 20,
//             ),
//           ],
//         ),
//         Text(
//           '$title',
//           style: TextStyle(color: Colors.white, fontSize: 12),
//         )
//       ],
//     ),
//   );
// }
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../home/view/HomeView.dart';
import '../japa count/view/count_jap_view.dart';
import '../search_bar/search_bar.dart';

Widget CustomBottomNavigationBar(context) {
  return Container(
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage(
          'assets/images/bottom2.png',
        ),
        fit: BoxFit.fill,
      ),
    ),
    height: Get.height * 0.07,
    width: Get.width,
    child: Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            bottombarWidget(
              title: 'Home',
              iconDataBorder: Icons.home_outlined,
              iconData: Icons.home,
              onPressed: () {
                // Add functionality for Home icon here
                Navigator.push(context, MaterialPageRoute(builder: (context) => HomeView()));

                print('Home icon pressed');
              }, icondata_border: Icons.home,
            ),
            bottombarWidget(
              title: 'Search',
              iconDataBorder: Icons.search_outlined,
              iconData: Icons.search,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => SearchIcon() ));
                // Add functionality for Search icon here
                // print('Search icon pressed');
              }, icondata_border: Icons.search_outlined ,
            ),
        Container(
              child: Image(
                image: AssetImage(
                    'assets/images/divya-bhakti-logo-[Recovered] (1) 1.png'),
              ),
              height: 35,
            ),
            bottombarWidget(
              title: 'Community',
              icondata_border: FontAwesomeIcons.timeline,iconColor: Colors.yellowAccent,
             // iconData: FontAwesomeIcons.groupArrowsRotate,
              iconDataBorder: Icons.group_add,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => CountJapView()));
                // Add functionality for Home icon here
                print('Home icon pressed');
              },
            ),
            bottombarWidget(
              title: 'History',
              iconDataBorder: Icons.history_outlined,
              iconData: Icons.history,iconColor: Colors.yellowAccent,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => CountJapView()));
                // Add functionality for Home icon here
                print('Home icon pressed');
              }, icondata_border: Icons.history,
            ),
            // Add other icons here with their respective onPressed callbacks
          ],
        ),
      ),
    ),
  );
}

Widget bottombarWidget({
  String? title,
  IconData? iconData,
  IconData? iconDataBorder,
  Color? iconColor,
  VoidCallback? onPressed, required IconData icondata_border,
}) {
  return InkWell(
    onTap: onPressed,
    child: Column(
      children: [
        Stack(
          children: [
            Icon(
              iconData,
              color: Colors.red,
              size: 25,
            ),
            Icon(
              iconDataBorder,
              color: Colors.yellow,
              size: 25,
            ),
          ],
        ),
        Text(
          '$title',
          style: TextStyle(color: Colors.white, fontSize: 16),
        )
      ],
    ),
  );
}

