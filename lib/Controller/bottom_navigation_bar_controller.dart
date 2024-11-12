import 'package:finalprojectaon/Screens/home_page.dart';
import 'package:finalprojectaon/Screens/setting_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class BottomNavBar extends GetxController{
  RxInt selectedindex = 0.obs;

  RxList<Widget> Botttompages=[
    HomePage(),
    HomePage(),
    HomePage(),
    SettingView(),
  ].obs;

  RxList<Widget> bnbicon=[
    SvgPicture.asset('SvgIcon/home.svg'),
    SvgPicture.asset('SvgIcon/dashboard.svg'),
    SvgPicture.asset('SvgIcon/profile.svg'),
  ].obs;
  
  RxList<Text> iconlable=[
    Text('Home'),
    Text('Dashboard'),
    Text('Profile'),
    Text('Setting'),
  ].obs;


  void Onitemselected(int index){
    selectedindex.value = index;
  }

}