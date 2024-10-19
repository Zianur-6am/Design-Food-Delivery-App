import 'package:design_food_delivery_app/screens/bottom_nav_bar.dart';
import 'package:design_food_delivery_app/screens/fd_home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';




void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Design Task 1',
      // theme: ThemeData(
      //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      // ),


      ///Routing
      // initialRoute: '/home',

      getPages: [
        GetPage(name: '/home', page: ()=> FDHome())
      ],

      home: BottomNavBar(),
    );
  }
}


