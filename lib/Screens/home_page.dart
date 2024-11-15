import 'package:finalprojectaon/Controller/filtter_icon_controller.dart';
import 'package:finalprojectaon/Screens/notification_view.dart';
import 'package:finalprojectaon/Widget/client_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../Widget/bottom_sheet.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  FiltterIconController filter =Get.put(FiltterIconController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 20,
                ),
                child: Column(
                  children: [
                    ///Profile container
                    Container(
                      height: 55,
                      width: 400,
                      margin: EdgeInsets.all(20),
                      child: Row(
                        children: [
                          ///client profile
                          CircleAvatar(
                            radius: 40,
                          ),
                          ///name of client
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Abdulla Ali',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Client',
                                style: TextStyle(
                                    fontSize: 12, color: Color(0xff999999)),
                              )
                            ],
                          ),
                          Spacer(),
                          ///notofication Button
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
                              child: IconButton(
                                onPressed: () {
                                  Get.to(NotificationView());
                                },
                                icon: SvgPicture.asset(
                                    'SvgIcon/notification.svg'),
                              )),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Row(
                children: [
                  ///search
                  Container(
                    margin: EdgeInsets.all(15),
                    height: 48,
                    width: 310,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xff3C97AF14),
                          offset: Offset(0, 2),
                          blurRadius: 8,
                          spreadRadius: 0,
                        ),
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child:

                        ///search TextFormField
                        TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: SvgPicture.asset(
                            'SvgIcon/search.svg',

                          ),
                        ),
                        hintText: 'Search',
                        hintStyle: TextStyle(
                          color: Color(0xffBFBFBF),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          borderSide: BorderSide(
                            color: Color(0xffFFFFFF),

                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          borderSide: BorderSide(
                            color: Color(0xffFFFFFF), // Color when not focused
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          borderSide: BorderSide(
                            color: Color(0xffFFFFFF), // Color when focused
                            // Border width when focused
                          ),
                        ),

                      ),
                    ),
                  ),

                  ///filter icon
                  Container(
                      height: 48,
                      width: 48,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadiusDirectional.circular(16),
                          border: Border.all(
                            color: filter.isselected.value?Color(0xff3C97AF):Colors.black,
                            width: 1
                          ),

                          boxShadow: [
                            BoxShadow(
                              color: Color(0xff3C97AF14),
                              offset: Offset(0, 2),
                              blurRadius: 8,
                              spreadRadius: 0,
                            ),
                          ]),
                      child: IconButton(
                        onPressed: () {
                          showModalBottomSheet(
                            context: context,
                            builder: (BuildContext context) {
                              return CustomBottomSheet(); // Custom BottomSheet widget
                            },
                          );
                          filter.onselected();
                          print('press');
                        },
                        icon: SvgPicture.asset('SvgIcon/filter.svg',
                          color: filter.isselected.value? Color(0xff3C97AF):Colors.black,

                       ),
                      )),
                ],
              ),

              ///client container

              ClientContainer(),
              ClientContainer(),
            ],
          ),
        ));
  }
}
