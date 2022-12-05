import 'package:cat_task/Create/Creat_acount.dart';
import 'package:cat_task/Login_Screen/Login.dart';
import 'package:flutter/material.dart';

import 'home/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
      initialRoute: LoginScreen.routName,
      routes: {
         LoginScreen.routName:(v)=>LoginScreen(),
        Createe.routName:(c)=>Createe(),
        HomeScreen.routeName:(c)=>HomeScreen(),
      },
    );
  }
}


