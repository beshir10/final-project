import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SettingView extends StatefulWidget {
  const SettingView({super.key});

  @override
  State<SettingView> createState() => _SettingViewState();
}

class _SettingViewState extends State<SettingView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20.0,left: 20),
                child: Column(
                  children: [
                    Container(
                      height: 55,
                      width: 400,
                      margin: EdgeInsets.all(20),
                      child: Row(
                        children: [
                          Text(
                            'Setting',
                            style: TextStyle(
                                fontSize: 24,
                            fontWeight: FontWeight.bold),
                          ),
                          Spacer(),
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
                                onPressed: () {},
                                icon: SvgPicture.asset(
                                    'SvgIcon/notification.svg'),
                              )),
                        ],
                      ),
                    )

                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Container(
                  height: 272,
                  width: 345,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadiusDirectional.circular(16),
                    color: Color(0xffECF6F9)
                  ),
                  child: Column(
                    children: [
                    ListTile(
                    leading: SvgPicture.asset('SvgIcon/04_user-circle.svg'),
                    title: Text('account setting',
                      style: TextStyle(
                        fontSize: 16,
                      ),),
                    trailing: TextButton(
                        onPressed: () {},
                        child:SvgPicture.asset('SvgIcon/01_arrow-right-01.svg')
                    ),
                  ),
                      SizedBox(height: 8,),
                      ListTile(
                        leading: SvgPicture.asset('SvgIcon/05_security-lock.svg'),
                        title: Text('privacy & security',
                          style: TextStyle(
                            fontSize: 16,
                          ),),
                        trailing: TextButton(
                            onPressed: () {},
                            child:SvgPicture.asset('SvgIcon/01_arrow-right-01.svg')
                        ),
                      ),
                      SizedBox(height: 8,),
                      ListTile(
                        leading: SvgPicture.asset('SvgIcon/06_language-circle.svg'),
                        title: Text('language',
                          style: TextStyle(
                            fontSize: 16,
                          ),),
                        trailing: TextButton(
                            onPressed: () {},
                            child:SvgPicture.asset('SvgIcon/01_arrow-right-01.svg')
                        ),
                      ),
                      SizedBox(height: 8,),
                      ListTile(
                        leading: SvgPicture.asset('SvgIcon/07_paint-board.svg'),
                        title: Text('appearance',
                        style: TextStyle(
                          fontSize: 16,
                        ),),
                        trailing: TextButton(
                            onPressed: () {},
                            child:SvgPicture.asset('SvgIcon/01_arrow-right-01.svg')
                        ),
                      ),
                    ],
                  ),
              )
              )
            ],
          )),
    );
  }
}
