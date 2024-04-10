import 'package:flutter/material.dart';

import '../../Route/customRoute.dart';
import 'cards.dart';
import 'categories.dart';
import 'challenges.dart';
import 'mantra_tile.dart';

class SearchIcon extends StatefulWidget {
  const SearchIcon({super.key});

  @override
  State<SearchIcon> createState() => _SearchIconState();
}

class _SearchIconState extends State<SearchIcon> {
  List rituals = [
    {"title": "Journey with the moon", "number": "27 mantras"},
    {"title": "7 Days of detox", "number": "7 mantras"},
    {"title": "Personalized Mantras for planets", "number": "9 mantras"},
    {"title": "Mercury Retrograde Remedy", "number": "7 mantras"},
    {"title": "Powerful Gayatri Mantra Ritual for planet",
      "number": "9 mantras",
    },
    {"title": "Remove obstacle in life in 27 days", "number": "27 mantras"},
    {
      "title": "Miraculous Navgraha Stotra Ritual for planet",
      "number": "9 mantras"
    },
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(

        backgroundColor: Colors.amber,
        body: SingleChildScrollView(
            child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Container(
            height: size.height * .06,
            width: size.width * 0.95,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0)),
            child: Center(
              child: Row(
                children: [
                  SizedBox(
                    width: 70,
                  ),
                  IconButton(
                    color: Colors.grey, onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => JaapList()));


                  }, icon: Icon(Icons.search,),
                  ),
                  Text(
                    "Search mantra by keyword",
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ),
            ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
            Categories(text: "New", back: 'assets/images/pic.jpg', ),
            Categories(text: "Popular", back: 'assets/images/background 2.png',),
            Categories(text: "All", back: 'assets/images/login_bg.png',),
            Categories(text: "My Mantra", back: 'assets/images/pic.jpg',),
                        ],
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Row(
            children: [
              Icon(
                Icons.verified_outlined,
                color: Colors.white,
              ),
              SizedBox(width: 12),
              Text(
                "Rituals",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.w600),
              )
            ],
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Container(
                        // color: Colors.green,
                        height: 850,
                        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridView.builder(
                physics: null,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemCount: rituals.length,
                itemBuilder: (BuildContext, int index) {
                  return RitualsCard(
                      number: rituals[index]['number'].toString(),
                      title: rituals[index]['title'].toString());
                },
                ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Row(
            children: [
              Icon(
                Icons.category_outlined,
                color: Colors.white,
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                "Find Mantras Based on Tags",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.w600),
              ),
            ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 150,
                        // color: Colors.green,
                        // width: 100,
                        child: ListView.builder(
              // scrollDirection: Axis.horizontal,
              itemCount: 2,
              itemBuilder: (context, index) {
                return MantraTile();
              }),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Row(
            children: [
              Icon(
                Icons.stars_outlined,
                color: Colors.white,
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                "Challenges",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.w600),
              ),
            ],
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Challenges(),
                      Challenges(),
                      SizedBox(
                        height: 40,
                      ),
                      Container(
                        height: size.height * 0.09,
                        width: size.width * 0.9,
                        decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.white60),
                        child: Padding(
            padding: const EdgeInsets.only(left: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 14,
                ),
                Text(
                  "Mantra count challenge",
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                      color: Colors.orange[700]),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Tap here to add a mantra",
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      )
                    ],
                  )),
      ),
    );
  }
}
