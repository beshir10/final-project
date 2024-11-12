import 'dart:ui';

import 'package:get/get.dart';

class Checkboxcontroller extends GetxController{
RxList<RxBool> isChecked =List.generate(4, (_)=>false.obs).obs;
RxList<Rx<Color>> selctedcolor = List.generate(4, (_)=>Color(0xff3C97AF).obs).obs;


void checkboxselected(int index ,bool value){
   isChecked[index].value=value;
   isChecked[index].value? Color(0xffffffff) : Color(0xff3C97AF);
}

}