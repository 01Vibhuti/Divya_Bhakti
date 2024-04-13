import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:divya_bhakti/app/modules/global/appcolor.dart';


class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return
      Drawer(backgroundColor: appcolor.redlow,elevation: 20,
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(30),
            color: appcolor.redbutton,
              child: Column(children: <Widget>[
                Container(
                  width: 100, height: 100,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Image(
                    image: AssetImage(
                      'assets/images/divya-bhakti-logo-[Recovered] (1) 1.png',
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
                Text('Divya Bhakti',
                style: TextStyle(fontSize: 32,
                  color: appcolor.yellowColor,
                fontWeight: FontWeight.bold),
                ),
                // Text('0000000000',
                // style: TextStyle(fontSize: 20
                // ),
                // ),

              ],
              ),

            ),

            const ListTile(
              leading: Icon(Icons.home,color: appcolor.yellowColor,size: 25,),
              title: Text('Home', style: TextStyle(fontSize: 25, color: appcolor.yellowColor,),
              ),
              onTap: null,
            ),
            const ListTile(
              leading: Icon(Icons.person_2,color: appcolor.yellowColor,size: 25,),
              title: Text('Profile', style: TextStyle(fontSize: 25,color: appcolor.yellowColor,),
              ),
              onTap: null,
            ),
            const ListTile(
              leading: Icon(Icons.favorite_border,color: appcolor.yellowColor,size: 25,),
              title: Text('Wishlist', style: TextStyle(fontSize: 25,color: appcolor.yellowColor,),
              ),
              onTap: null,
            ),
            const ListTile(
              leading: Icon(Icons.shop_two_sharp,color: appcolor.yellowColor,size: 25,),
              title: Text('My Cart', style: TextStyle(fontSize: 25,color: appcolor.yellowColor,),
              ),
              onTap: null,
            ),
            const ListTile(
              leading: Icon(Icons.list,size: 25,color: appcolor.yellowColor,),
              title: Text('Waiting List', style: TextStyle(fontSize: 25,color: appcolor.yellowColor,),
              ),
              onTap: null,
            ),
            // ),const ListTile(
            //   leading: Icon(Icons.notifications),
            //   title: Text('Notification', style: TextStyle(fontSize: 18),
            //   ),
            //   onTap: null,
            // ),
            const ListTile(
              leading: Icon(Icons.bookmark_border,color: appcolor.yellowColor,size: 25,),
              title: Text('Order From', style: TextStyle(fontSize: 25,color: appcolor.yellowColor,),
              ),
              onTap: null,
            ),const ListTile(
              leading: Icon(Icons.offline_bolt_rounded,size: 25,color: appcolor.yellowColor,),
              title: Text('Order Status', style: TextStyle(fontSize: 25,color: appcolor.yellowColor,),
              ),
              onTap: null,
            ),const ListTile(
              leading: Icon(Icons.production_quantity_limits,size: 25,color: appcolor.yellowColor,),
              title: Text('Our Product', style: TextStyle(fontSize: 25,color: appcolor.yellowColor,),
              ),
              onTap: null,
            ),const ListTile(
              leading: Icon(Icons.grass_outlined,color: appcolor.yellowColor,size: 25,),
              title: Text('Book Pujari', style: TextStyle(fontSize: 25,color: appcolor.yellowColor,),
              ),
              onTap: null,
            ),
            const ListTile(
              leading: Icon(Icons.design_services,color: appcolor.yellowColor,size: 25,),
              title: Text('Our Service', style: TextStyle(fontSize: 25,color: appcolor.yellowColor,),
              ),
              onTap: null,
            ),
            // const ListTile(
            //   leading: Icon(Icons.price_change),
            //   title: Text('Price type', style: TextStyle(fontSize: 18),
            //   ),
            //   onTap: null,
            // ),
            const ListTile(
              leading: Icon(Icons.queue_outlined,color: appcolor.yellowColor,size: 25,),
              title: Text('Enquiry', style: TextStyle(fontSize: 25,color: appcolor.yellowColor,),
              ),
              onTap: null,
            ),
            const ListTile(
              leading: Icon(Icons.vertical_align_bottom_outlined,color: appcolor.yellowColor,size: 25,),
              title: Text('About Us', style: TextStyle(fontSize: 25,color: appcolor.yellowColor,),
              ),
              onTap: null,
            ),
            const ListTile(
              leading: Icon(Icons.terminal_sharp,size: 25,color: appcolor.yellowColor,),
              title: Text('Terms & Condition', style: TextStyle(fontSize: 25,color: appcolor.yellowColor,),
              ),
              onTap: null,
            ),
            const ListTile(
              leading: Icon(Icons.password,color: appcolor.yellowColor,size: 25,),
              title: Text('Reset Password', style: TextStyle(fontSize: 25,color: appcolor.yellowColor,),
              ),
              onTap: null,
            ),
            const ListTile(
              leading: Icon(Icons.feedback,color: appcolor.yellowColor,size: 25,),
              title: Text('Feedback', style: TextStyle(fontSize: 25, color: appcolor.yellowColor,),
              ),
              onTap: null,
            ),

          ],
        )
      ),
    );
  }
}
