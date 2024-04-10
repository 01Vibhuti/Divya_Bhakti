import 'package:divya_bhakti/app/modules/global/appcolor.dart';
import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';

Widget blockButton({

  String? title,
  double? fontsize,
  Color? textcolor,
  Icon? Icon,
  Color? borderColor,
  Color? backgroundColor,
  double? borderRadius,
  String? titleColor,
  double? height,
  double? width,
  Callback? callback,
}) {
  return InkWell(
    onTap: callback,
    child: Container(
      width: width,
      height: height,
      margin: EdgeInsets.symmetric(horizontal: 5,vertical: 5),
      padding: EdgeInsets.symmetric(horizontal: 5,vertical: 5),
      decoration: BoxDecoration(
        border: Border.all(
          color: appcolor.yellowColor,
        ),
        borderRadius: BorderRadius.circular(4),
        color: backgroundColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '$title',
            style: TextStyle(
              fontSize: fontsize,
              color: Colors.white,
            ),
          )
        ],
      ),
    ),
  );
}
