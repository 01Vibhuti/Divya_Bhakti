import 'package:flutter/material.dart';

class RitualsCard extends StatefulWidget {
  RitualsCard({super.key, required this.number, required this.title});
  String title;
  String number;


  @override
  State<RitualsCard> createState() => _RitualsCardState();
}

class _RitualsCardState extends State<RitualsCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(

        height: MediaQuery.of(context).size.height * .18,
        width: MediaQuery.of(context).size.width * .38,

        decoration: BoxDecoration(border: Border.all(color: Color(0xffFFD704)),
            // color: Colors.grey,
            borderRadius: BorderRadius.circular(15.0),image: DecorationImage(image: AssetImage(
          'assets/images/pic.jpg',

        ),fit: BoxFit.cover

        )),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(Icons.lock,color: Color(0xffFFD704),),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                widget.title,
                style: TextStyle(
                    color: Color(0xffFFD704),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                widget.number,
                style: TextStyle(color: Color(0xffFFD704)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
