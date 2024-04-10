import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  Categories({super.key, required this.text, required this.back});
  final String text;
   var back;

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 40,
          backgroundColor: Colors.white60,
           backgroundImage: AssetImage(widget.back),
          //       AssetImage(
    //   'assets/images/background 2.png',
    // ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          widget.text,
          style: TextStyle(color: Colors.white, fontSize: 15),
        )
      ],
    );
  }
}
