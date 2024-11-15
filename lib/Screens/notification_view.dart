import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';


class NotificationView extends StatefulWidget {
  const NotificationView({super.key});

  @override
  State<NotificationView> createState() => _NotificationViewState();
}

class _NotificationViewState extends State<NotificationView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body:Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40.0),
        child: SafeArea(
            child: ListView(
              children: [
                ///Arrow Back And Notification
                Padding(
                  padding: const EdgeInsets.only(top: 30.0,),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          InkWell(
                            child: SvgPicture.asset('SvgIcon/02_arrow-left-01.svg'),
                            onTap: (){Get.back();},),
                          SizedBox(width:12 ,),
                          Text(
                            'Notification',
                            style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold),
                          ),

                        ],
                      ),
                      SizedBox(height: 16,),
                    ],
                  ),
                ),
                Text('You Have 3 Notification Today !',
                  style:TextStyle(
                    fontSize: 14,
                  ),),
                SizedBox(height: 40,),
                ///Today
                Text('Today',
                style: TextStyle(
                  fontSize:18,
                  color: Color(0xff0D0D0D),
                  fontWeight: FontWeight.bold
                ),),
                SizedBox(height: 30,),
                ///Notification
                Container(
                  height: 50,
                  width: 345,
                  child: Row(
                    children: [
                      ///Dots
                      Container(
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadiusDirectional.circular(20),
                          color: Color(0xffC1D9F0)
                        ),
                      ),
                      SizedBox(width: 10,),
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage('Image/Ellipse 19.png'),
                      ),
                      SizedBox(width: 20,),
                      
                      Text('Zainab Saad comment on your \nproject  2h')
                      
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  width: 345,
                  height: 1,
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                              color: Color(0xffD9D9D9),
                              width: 1
                          )
                      )
                  ),
                ),
                SizedBox(height: 20,),
                ///Notification
                Container(
                  height: 50,
                  width: 345,
                  child: Row(
                    children: [
                      ///Dots
                      Container(
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadiusDirectional.circular(20),
                            color: Color(0xffC1D9F0)
                        ),
                      ),
                      SizedBox(width: 10,),
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage('Image/Ellipse 19.png'),
                      ),
                      SizedBox(width: 20,),

                      Text('Zainab Saad comment on your \nproject  2h')

                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  width: 345,
                  height: 1,
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                              color: Color(0xffD9D9D9),
                              width: 1
                          )
                      )
                  ),
                ),
                SizedBox(height: 20,),
                ///Notification
                Container(
                  height: 50,
                  width: 345,
                  child: Row(
                    children: [
                      ///Dots
                      Container(
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadiusDirectional.circular(20),
                            color: Color(0xffC1D9F0)
                        ),
                      ),
                      SizedBox(width: 10,),
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage('Image/Ellipse 19.png'),
                      ),
                      SizedBox(width: 20,),

                      Text('Zainab Saad comment on your \nproject  2h')

                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  width: 345,
                  height: 1,
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                              color: Color(0xffD9D9D9),
                              width: 1
                          )
                      )
                  ),
                ),





              ],
            ),
        ),
      )
    );

  }
}
