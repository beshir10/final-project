import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../Controller/bottom_navigation_bar_controller.dart';

class Bnb extends StatefulWidget {
  const Bnb({super.key});

  @override
  State<Bnb> createState() => _BnbState();
}

class _BnbState extends State<Bnb> {
  BottomNavBar bottomcontrol =Get.put(BottomNavBar());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Obx(()=>IndexedStack(
        index: bottomcontrol.selectedindex.value,
        children:bottomcontrol.Botttompages,
      ),
      ),
floatingActionButton:  FloatingActionButton(onPressed: (){},
  child: SvgPicture.asset('SvgIcon/plus.svg'),
  backgroundColor:  Color(0xff3C97AF),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadiusDirectional.circular(1000),

  ),
  elevation: 1,

),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(

        height: 92,
          icons: [
            Icons.home,
            Icons.dashboard,
            Icons.supervised_user_circle,
            Icons.settings,
          ],
          activeIndex: bottomcontrol.selectedindex.value,
          gapLocation: GapLocation.center,
          activeColor: Colors.blue,
          inactiveColor: Colors.grey,
          backgroundColor:Color(0xffA0D2DF) ,
          onTap: bottomcontrol.Onitemselected),
    );
  }
}
