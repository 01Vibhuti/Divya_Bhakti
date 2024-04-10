import 'dart:developer';
import 'package:divya_bhakti/app/modules/global/appcolor.dart';
import 'package:divya_bhakti/app/modules/global/pageflip.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Japacontroller extends GetxController {
  List<Widget> list = <Widget>[].obs;
  // RxInt pageNumber=1.obs;
  List<Widget> pageList = <Widget>[
    pageWidget(),
    pageWidget(),
    // pageWidget(),
    // pageWidget(),
    // pageWidget(),
    // pageWidget(),
    // pageWidget(),
    // pageWidget(),
    // pageWidget(),
    // pageWidget(),
  ].obs;
  List<Widget> jaiMataDiList = <Widget>[
    // jaiMataDi_widget(),
    // jaiMataDi_widget(),
    // jaiMataDi_widget(),
    // jaiMataDi_widget(),
    // jaiMataDi_widget(),
    // jaiMataDi_widget(),
    // jaiMataDi_widget(),
    // jaiMataDi_widget(),
    // jaiMataDi_widget(),
    // jaiMataDi_widget(),
    // jaiMataDi_widget(),
    // jaiMataDi_widget(),
    // jaiMataDi_widget(),
    // jaiMataDi_widget(),
    // jaiMataDi_widget(),
    // jaiMataDi_widget(),
    // jaiMataDi_widget(),
    // jaiMataDi_widget(),
    // jaiMataDi_widget(),
    // jaiMataDi_widget(),
    // jaiMataDi_widget(),
    // jaiMataDi_widget(),
    // jaiMataDi_widget(),
    // jaiMataDi_widget(),
    // jaiMataDi_widget(),
    // jaiMataDi_widget(),
    // jaiMataDi_widget(),
    // jaiMataDi_widget(),
    // jaiMataDi_widget(),
    // jaiMataDi_widget(),
    // jaiMataDi_widget(),
    // jaiMataDi_widget(),
    // jaiMataDi_widget(),
    // jaiMataDi_widget(),
    // jaiMataDi_widget(),
    // jaiMataDi_widget(),
    // jaiMataDi_widget(),
    // jaiMataDi_widget(),
    // jaiMataDi_widget(),
    // jaiMataDi_widget(),
    // jaiMataDi_widget(),
    // jaiMataDi_widget(),
    // jaiMataDi_widget(),
    // jaiMataDi_widget(),
    // jaiMataDi_widget(),
    // jaiMataDi_widget(),
    jaiMataDi_widget(),
    jaiMataDi_widget(),
  ].obs;
  RxInt pageListSize = 0.obs;
  RxInt Japacounter = 0.obs;
  int pageitemcount = 0;
  int currentPageNumber=0;
  
  int getLastPageNumber()
  {
    return pageList.length-1;
  }
  bool increaseJapaCounter() {
    Japacounter.value++;
    pageitemcount++;
    
    if (pageitemcount > 4) {
      currentPageNumber++;
      pageList[pageList.length - 1] = pageWidgetwithText();
      pageList.add(pageWidget());
      list.clear();
      
      pageitemcount = 0;
      update();
      list.add(jaiMataDi_widget());
      // updateList();
      return true;
    }

    list.add(jaiMataDi_widget());
    return false;
  }

  void updateList() {
    pageList.add(pageWidget());
    update();
  }

  void turnPagecount(
      int times, GlobalKey<PageFlipWidgetState> pageflipcontroller) {
    if (times <= 0) {
      return;
    }

    pageflipcontroller.currentState!.turnPage(
        DragUpdateDetails(globalPosition: Offset(200, 0)),
        BoxConstraints(maxHeight: 100, maxWidth: 100));
    pageflipcontroller.currentState!
        .nextPage()
        .then((value) => turnPagecount(times - 1, pageflipcontroller));
  }

  @override
  void onInit() {
    // TODO: implement onInit
    // updateList();
    super.onInit();
  }

  void gotoPageWithoutTurn(
      int times, GlobalKey<PageFlipWidgetState> controller) {
    if (times <= 0) return;
    controller.currentState!
        .nextPage()
        .then((value) => gotoPageWithoutTurn(times - 1, controller));
  }
  void gotoLastPage(
      int times, GlobalKey<PageFlipWidgetState> controller) {
    if (times <= 0) return;
    controller.currentState!
        .nextPage()
        .then((value) => gotoPageWithoutTurn(times - 1, controller));
  }
}

Widget pageWidget({int? index}) {
  return Stack(
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
              mainAxisAlignment: MainAxisAlignment.spaceAround,
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
    ],
  );
}

Widget jaiMataDi_widget() {
  return Container(
    padding: EdgeInsets.only(bottom: 9, left: 10),
    child: Text(
      'जय माता दी',
      style: TextStyle(
        color: appcolor.redbutton,
        fontSize: 18,
      ),
      textAlign: TextAlign.center,
    ),
  );
}

Widget pageWidgetwithText({int? index}) {
  return Stack(
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
              mainAxisAlignment: MainAxisAlignment.spaceAround,
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
        children: [
          jaiMataDi_widget(),
          jaiMataDi_widget(),
          jaiMataDi_widget(),
          jaiMataDi_widget(),
          jaiMataDi_widget(),
          jaiMataDi_widget(),
          jaiMataDi_widget(),
          jaiMataDi_widget(),
          jaiMataDi_widget(),
          jaiMataDi_widget(),
          jaiMataDi_widget(),
          jaiMataDi_widget(),
          jaiMataDi_widget(),
          jaiMataDi_widget(),
          jaiMataDi_widget(),
          jaiMataDi_widget(),
          jaiMataDi_widget(),
          jaiMataDi_widget(),
          jaiMataDi_widget(),
          jaiMataDi_widget(),
          jaiMataDi_widget(),
          jaiMataDi_widget(),
          jaiMataDi_widget(),
          jaiMataDi_widget(),
          jaiMataDi_widget(),
          jaiMataDi_widget(),
          jaiMataDi_widget(),
          jaiMataDi_widget(),
          jaiMataDi_widget(),
          jaiMataDi_widget(),
          jaiMataDi_widget(),
          jaiMataDi_widget(),
          jaiMataDi_widget(),
          jaiMataDi_widget(),
          jaiMataDi_widget(),
          jaiMataDi_widget(),
          jaiMataDi_widget(),
          jaiMataDi_widget(),
          jaiMataDi_widget(),
          jaiMataDi_widget(),
          jaiMataDi_widget(),
          jaiMataDi_widget(),
          jaiMataDi_widget(),
          jaiMataDi_widget(),
          jaiMataDi_widget(),
          jaiMataDi_widget(),
          jaiMataDi_widget(),
          jaiMataDi_widget(),
        ],
      ).paddingOnly(left: 35, top: 53),
    ],
  );
}
