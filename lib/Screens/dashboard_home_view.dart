import 'package:finalprojectaon/Screens/notification_view.dart';
import 'package:finalprojectaon/Widget/tapBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class DashboardHomeView extends StatefulWidget {
  const DashboardHomeView({super.key});

  @override
  State<DashboardHomeView> createState() => _DashboardHomeViewState();
}

class _DashboardHomeViewState extends State<DashboardHomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 20,
            ),
            child: Column(
              children: [
                ///Profile container
                Container(
                  height: 57,
                  width: 400,
                  margin: EdgeInsets.all(20),
                  child: Row(
                    children: [
                      ///client profile
                      CircleAvatar(
                        radius: 40,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Abdulla Ali',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Software Manager in \nGoogle',
                            style: TextStyle(
                                fontSize: 12, color: Color(0xff898686),
                            fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                      Spacer(),
                      ///notification
                      Container(
                          height: 48,
                          width: 48,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                              BorderRadiusDirectional.circular(100),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0xff3C97AF14),
                                  offset: Offset(0, 2),
                                  blurRadius: 8,
                                  spreadRadius: 0,
                                ),
                              ]),
                          ///Notification button
                          child: IconButton(
                            onPressed: () {
                              Get.to(NotificationView());
                            },
                            icon: SvgPicture.asset(
                                'SvgIcon/notification.svg'),
                          )),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40.0,vertical: 10),
                      child: Text('Hi Abdulla!',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600
                      ),),
                    ),
                  ],
                ),

                SizedBox(height: 20,),
                ///search TextFormField
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      prefixIcon:
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: SvgPicture.asset(
                          'SvgIcon/search.svg',
                        ),
                      ),
                      hintText: 'Search for a Project',
                      hintStyle: TextStyle(
                        color: Color(0xffBFBFBF),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide(width: 1,
                          color: Color(0xffBFBFBF),
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide(width: 1,
                          color: Color(0xffBFBFBF), // Color when not focused
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide(width: 1,
                            color: Color(0xffBFBFBF),
                          // Border width when focused
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 30,),




                Tapbar(text: ['All','completed','peding','InProgress']),





                SizedBox(height: 30,),

                ///Project Name Container
                Container(
                  height: 189,
                  width: 345,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadiusDirectional.circular(12),
                    color: Color(0xffF8F9FC)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Project Name',
                        style: TextStyle(
                          fontSize: 24,),),

                        ///in progress Container
                        Container(
                          height: 32,
                          width: 95,
                          decoration: BoxDecoration(
                            color: Color(0xffFFF4D6),
                            borderRadius: BorderRadiusDirectional.circular(16)
                          ),
                          child:
                          Center(
                            child: Text('In Progress',
                            style: TextStyle(
                              color: Color(0xffFFBF00),
                              fontSize: 14,
                            ),),
                          ),
                        ),
                        SizedBox(height: 30,),

                        Text('Freelancer',
                        style: TextStyle(
                          fontSize: 12,
                          color: Color(0xff808080)
                        ),),

                        SizedBox(height: 10,),


                        Row(
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage('Image/Ellipse 19.png'),
                            ),
                            SizedBox(width: 8,),
                            Text('Zainab Tahseen',
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xff808080)
                            ),)
                          ],
                        )

                      ],
                    ),
                  ),
                ),
                SizedBox(height: 30,),
                Container(
                  height: 189,
                  width: 345,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadiusDirectional.circular(12),
                      color: Color(0xffF8F9FC)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Project Name',
                          style: TextStyle(
                            fontSize: 24,),),

                        ///in progress Container
                        Container(
                          height: 32,
                          width: 95,
                          decoration: BoxDecoration(
                              color: Color(0xffFFF4D6),
                              borderRadius: BorderRadiusDirectional.circular(16)
                          ),
                          child:
                          Center(
                            child: Text('In Progress',
                              style: TextStyle(
                                color: Color(0xffFFBF00),
                                fontSize: 14,
                              ),),
                          ),
                        ),
                        SizedBox(height: 30,),

                        Text('Freelancer',
                          style: TextStyle(
                              fontSize: 12,
                              color: Color(0xff808080)
                          ),),

                        SizedBox(height: 10,),


                        Row(
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage('Image/Ellipse 19.png'),
                            ),
                            SizedBox(width: 8,),
                            Text('Zainab Tahseen',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xff808080)
                              ),)
                          ],
                        )

                      ],
                    ),
                  ),
                ),
             Container(
        width: 345,
        height: 178,
        child: Padding(
          padding: const EdgeInsets.only(left: 22,right: 22,top: 22),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
            decoration: BoxDecoration(
              color: Color(0xFF007AFF),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Container(
              width: 345,
              height: 159,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Task 1',
                        style: TextStyle(
                          fontFamily: 'Source Sans Pro',
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF1B2637),
                          fontSize: 18,
                          height: 1.25,
                        ),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.access_time,
                            size: 20,
                            color: Color(0xFF808080),
                          ),
                          SizedBox(width: 4),
                          Text(
                            '13 Hours',
                            style: TextStyle(
                              fontFamily: 'Source Sans Pro',
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF808080),
                              fontSize: 12,
                              height: 1.5,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 12),
                  Text(
                    'Task Name',
                    style: TextStyle(
                      fontFamily: 'Source Sans Pro',
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF1B2637),
                      fontSize: 16,
                      height: 1.25,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'short  Description about the task ',
                    style: TextStyle(
                      fontFamily: 'Source Sans Pro',
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF808080),
                      fontSize: 16,
                      height: 1.5,
                    ),
                  ),
                  SizedBox(height: 16),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 8,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: Colors.grey[300],
                          ),
                          child: FractionallySizedBox(
                            alignment: Alignment.centerLeft,
                            widthFactor: 0.5, // 50% progress
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                color: Colors.orange,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 12),
                      Icon(
                        Icons.check_circle,
                        color: Colors.grey,
                        size: 32,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),



      ],
            ),
          ),
        ],
      ),
    );
  }
}
