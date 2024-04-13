import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../modules/global/customBottomNavigationBar.dart';
import '../modules/home/view/HomeView.dart';
import '../modules/search_bar/search_bar.dart';

// class customRoute{
//
//   static Routing(Widget page, String tag)
//   {
//     return Hero(tag: tag, child:page );
//   }
// }
class JaapList extends StatefulWidget {
  const JaapList({Key? key}) : super(key: key);

  @override
  State<JaapList> createState() => _JaapListState();
}

class _JaapListState extends State<JaapList> {
  var arrNames = ['Shiva Moola Mantra', 'Ganesha Maha Mantra', 'Murugan Mantra',
    'Maha Mritunjaya Manta', 'Maha Krishna Manta','Shiva Moola Mantra', 'Ganesha Maha Mantra', 'Murugan Mantra',
    'Maha Mritunjaya Manta', 'Gayatri Manta', 'Vishnu Bhagavate Vasudevaya Manta', 'Durga Mantra'];

  List<Map<String, dynamic>> _allUsers = [
    {"id": "1", "name": "Shiva Moola Mantra", "age": 19},
    {"id": "2", "name": "Ganesha Maha Mantra", "age": 13},
    {"id": "3", "name": "Murugan Mantra", "age": 55},
    {"id": "4", "name": "Maha Mritunjaya Manta", "age": 32},
    {"id": "5", "name": "Maha Krishna Manta", "age": 45},
    {"id": "6", "name": "Durga Mantra", "age": 22},
    {"id": "7", "name": "Vishnu Bhagavate Vasudevaya Manta", "age": 52},
    {"id": "8", "name": "Gayatri Manta", "age": 12},
    {"id": "9", "name": "Om Namah Shivaya", "age": 56},
    {"id": "10", "name": "the Mantra of Light", "age": 15},
  ];
  List<Map<String, dynamic>> _foundUsers = [];
  @override
  void initState() {
    _foundUsers = _allUsers;
    super.initState();
  }
  void _runFilter(String enteredKeyword){
    List<Map<String, dynamic>>? results = enteredKeyword.isEmpty
        ? _allUsers
        : _allUsers.where((user) => user["name"].toLowerCase()
        .contains(enteredKeyword.toLowerCase())).toList();
    setState(() {
      _foundUsers = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: Get.height,
        width: Get.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'assets/images/background 2.png',
              ),
              fit: BoxFit.fill),
        ),
        child: Scaffold(

          //CustomBottomNavigationBar(context),
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: const Text('Search', style: TextStyle(color: Color(0xffFFD704),fontSize: 25),),centerTitle: true,
            backgroundColor: const Color.fromRGBO(251, 14, 2, 1),
            leading: IconButton(onPressed: () { Navigator.pop(context); }, icon: Icon(Icons.arrow_back_rounded,color: Color(0xffFFD704))),
          ),
          body: Opacity(
            opacity: 0.8,
            child: Container(
              height: Get.height,
              width: Get.width,
              // margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                // color: Colors.red,
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromRGBO(251, 14, 2, 1),
                    Color(0xffC7451B),
                  ],
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30.0), // Circular border radius
                    ),
                    margin: EdgeInsets.all(8),
                    child: TextField(
                      onChanged: (value) => _runFilter(value),
                     // style: TextStyle(color: Colors.b), // Changing text color
                      decoration: InputDecoration(
                        hintText: 'Search', // Hint text
                        prefixIcon: Icon(Icons.search,size: 28,), // Search icon
                        border: InputBorder.none, // No border
                      ),
                    ),
                  ),
                  Expanded(child:
                  ListView.builder(
                      itemCount: _foundUsers.length,
                      itemBuilder: (context, index) =>Card(
                        key: ValueKey(_foundUsers[index]["id"]),
                        elevation: 8,
                        margin: EdgeInsets.symmetric(vertical: 6) ,
                        child:
                        Container(
                          color: Color(0xffEB4117),
                          child: ListTile(
                            leading: Image(image: AssetImage('assets/images/mataji face.png'),
                            ),
                            title:
                            Text(_foundUsers[index]['name'],
                                style: TextStyle(color: Color(0xffFFD704),fontSize: 22)
                            ),
                            trailing:  Icon(Icons.arrow_forward_ios_outlined, color: Color(0xffFFD704) ),
                            subtitle: Text('${_foundUsers[index]["age"].toString()}',style:
                            TextStyle(color: Color(0xffFFD704),fontSize: 20),),
                            onTap: () {
                              showDialog(context: context, builder: (context) {
                                return AlertDialog(
                                  elevation: 6,
                                  backgroundColor: Color(0xffEB4117),
                                  title: Text(arrNames[index],style:  TextStyle( color: Color(0xffFFD704)),),
                                  content: Text('Enter the Japa counts you want to chant',style:  TextStyle( color: Color(0xffFFD704)),),
                                  actions: <Widget>[
                                    TextField(
                                      keyboardType: TextInputType.number,decoration: InputDecoration(fillColor: Color(0xffFFD704) ),
                                    ),
                                    Row(
                                      children: [
        
                                        TextButton(
                                            onPressed: () => Navigator.of(context).pop(),
                                            child: Text('Cancel',style: TextStyle(color: Color(0xffFFD704)),)),
                                        TextButton(onPressed: () {
                                          Navigator.of(context).pop();
                                        }, child: Text('ok',style:  TextStyle( color: Color(0xffFFD704)),
                                        ),
                                        ),
                                      ],
                                    ),
        
                                  ],
                                );
                              });
                            },
                          ),
                        ),
                      )),),
                ],),
              ),
            ),
          ),
        
        ),
      ),
    );

      SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                //onChanged: (value) => _runFilter(value),
                decoration: InputDecoration(labelText: 'Search',suffixIcon: Icon(Icons.search) ),),
            ),
            const SizedBox(height: 10,),
            Container(
                height: Get.height,
                width: Get.width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        'assets/images/background 2.png',
                      ),
                      fit: BoxFit.fill),
                ),
            child: Scaffold(
              appBar: AppBar(
                title: Text('Search'),centerTitle: true,

              ),
              body:ListView.separated(
                  itemBuilder: (context, index){
                    return ListTile(
                      leading: Image(image: AssetImage('assets/images/mataji face.png'),
                        width: 30,height: 30,),
                      trailing: Icon(Icons.arrow_forward),
                      subtitle: Text('$index'),
                      title:Text(arrNames[index]),
                      onTap: () {
                        showDialog(context: context, builder: (context) {
                          return AlertDialog(
                            title: Text(arrNames[index]),
                            content: Text('Enter the Japa counts you want to chant'),
                            actions: <Widget>[
                              TextField(
                                keyboardType: TextInputType.number,
                              ),
                              Row(
                                children: [
                                  TextButton(
                                      onPressed: () => Navigator.of(context).pop(),
                                      child: Text('Cancel')),
                                  TextButton(onPressed: () {
                                    Navigator.of(context).pop();
                                  }, child: Text('ok'),

                                  ),
                                ],
                              ),

                            ],
                          );
                        });
                      },
                      // onTap: () {
                      //   AlertDialog(
                      //     title: Text('Enter the Japa counts you want to chant'),
                      //   );
                      // },

                    );

                  }, separatorBuilder: (BuildContext context, int index) {
                    return Divider(height: 10,thickness: 1,);
              }, itemCount: arrNames.length,)

            ),
                ),
          ],
        ),
      );
  }
}

