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
          backgroundColor: Colors.transparent, // Set background color to transparent
          backgroundImage: AssetImage(widget.back),
          // backgroundImage: AssetImage('assets/images/background 2.png'),
          // You can remove the above line if you're using `widget.back`
          // Replace `Colors.red` with your desired border color
          // You can also adjust the borderWidth as needed
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Color(0xffFFD704), width: 2.0),
            ),
          ),
        ),

        SizedBox(
          height: 10,
        ),
        Text(
          widget.text,
          style: TextStyle(color: Color(0xffFFD704), fontSize: 18),
        )
      ],
    );
  }
}
