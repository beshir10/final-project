import 'package:finalprojectaon/Screens/home_page.dart';
import 'package:finalprojectaon/Screens/setting_view.dart';
import 'package:finalprojectaon/Widget/bnb.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Bnb(),
    );
  }
}
