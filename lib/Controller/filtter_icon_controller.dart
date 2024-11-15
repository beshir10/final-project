
import 'dart:ui';

import 'package:get/get.dart';

class FiltterIconController extends GetxController{
  var isselected =false.obs;
  void onselected(){
    isselected.value=!isselected.value;
    


  }

}