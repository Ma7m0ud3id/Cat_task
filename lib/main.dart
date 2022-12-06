import 'package:cat_task/Create/Creat_acount.dart';
import 'package:cat_task/Login_Screen/Login.dart';
import 'package:cat_task/providers/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'home/home.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context){

        return UserProvider();
      },
      child:MyApp()));
}

class MyApp extends StatefulWidget {

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
//static String? condition;
 //UserProvider? provider;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();


  }
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //provider=Provider.of<UserProvider>(context);
    return MaterialApp(
     debugShowCheckedModeBanner: false,

      initialRoute:LoginScreen.routName,

      routes: {
         LoginScreen.routName:(v)=>LoginScreen(),
        Createe.routName:(c)=>Createe(),
        HomeScreen.routeName:(c)=>HomeScreen(),
      },
    );
  }

}


