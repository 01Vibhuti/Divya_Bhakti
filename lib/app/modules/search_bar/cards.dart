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

        decoration: BoxDecoration(
            // color: Colors.grey,
            borderRadius: BorderRadius.circular(15.0),image: DecorationImage(image: AssetImage(
          'assets/images/background 2.png',
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
                  Icon(Icons.lock),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                widget.title,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                widget.number,
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }
}
