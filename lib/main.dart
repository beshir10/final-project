import 'package:finalprojectaon/Screens/Register_view.dart';
import 'package:finalprojectaon/Screens/home_page.dart';
import 'package:finalprojectaon/Screens/phone_screen_view.dart';
import 'package:finalprojectaon/Screens/setting_view.dart';
import 'package:finalprojectaon/Screens/start_view.dart';
import 'package:finalprojectaon/Widget/bnb.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
late  SharedPreferences sharedPreferences;

void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  sharedPreferences = await SharedPreferences.getInstance();
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Registerscreen(),
    );
  }
}
