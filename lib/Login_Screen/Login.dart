import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../Create/Creat_acount.dart';
import '../Create/States.dart';

import '../base.dart';
import '../home/home.dart';
import '../providers/user_provider.dart';
import 'Navigat_login.dart';
import 'Register_login.dart';

class LoginScreen extends StatefulWidget {
  static const String routName = 'jhjbhbi';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends BaseState<LoginScreen, RegisterLogin>
    implements NavigatLogin {
  late String email;
  late String password;
  var emailcontroller = TextEditingController();
  var formKey = GlobalKey<FormState>();
  var passwordcontroller = TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    viewModel.Navigatore = this;
    WidgetsBinding.instance.addPostFrameCallback((____)=>Sherdeprif() );
  }
  @override
  Widget build(BuildContext context) {

    return ChangeNotifierProvider(
        create: (c) => viewModel,
        child: Stack(children: [
          Container(
              child: Image.asset(
            'assets/images/main_bg.png',fit: BoxFit.fill,height: double.infinity
                ,width: double.infinity,
          )),
          Scaffold(
            backgroundColor: Colors.transparent,
            resizeToAvoidBottomInset: false,
            appBar: AppBar(
              centerTitle: true,
              title: Text(
                'Create Acount',
                style: TextStyle(color: Colors.black),
              ),
              backgroundColor: Colors.transparent,
              elevation: 0,
            ),
            body: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Form(
                    key: formKey,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          TextFormField(
                            controller: emailcontroller,
                            style: TextStyle(color: Colors.black),
                            decoration: InputDecoration(labelText: 'Email name',labelStyle:TextStyle(color: Colors.black),),
                            validator: (text){
                              if(text==null||text.trim().isEmpty){
                                return'Enter  Email please';
                              }
                              bool emailValid = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(text);
                              if(emailValid){
                                return null;
                              }
                              else {
                                return 'Email is not true';
                              }
                            },
                          ),
                          TextFormField(
                            controller: passwordcontroller,
                            style: TextStyle(color: Colors.black),
                            decoration: InputDecoration(labelText: 'Password ',labelStyle:TextStyle(color: Colors.black),),
                            validator: (text){
                              if(text==null||text.trim().isEmpty){
                                return'Enter  Password please';
                              }
                              if(text.length<6){
                                return 'Password is smaller than 6 char';
                              }
                              return null;
                            },
                          ),
                          ElevatedButton(onPressed: (){
                            Recive();
                          }, child: Text('Login',style: TextStyle(color: Colors.black),)),
                          InkWell(
                              onTap: (){
                                Navigator.pushNamed(context, Createe.routName);
                              },
                              child: Text('Create New Account',style: TextStyle(color: Colors.blue),)),

                        ]))),
          )
        ]));
  }



  @override
  RegisterLogin intichange() {
    return RegisterLogin();
  }
  void Recive(){
    if (formKey.currentState!.validate()) {
      viewModel.login(emailcontroller.text, passwordcontroller.text,email,password);
    }
  }
  void Sherdeprif()async{

    // var pro=Provider.of<UserProvider>(context, listen: false);
    final prefs = await SharedPreferences.getInstance();
     email = prefs.getString('email')??'';
     password = prefs.getString('password')??'';
    String username = prefs.getString('username')??'';
    String fname = prefs.getString('fName')??'';
    String lname = prefs.getString('lName')??'';
    // pro.UserChange(email, password, fname, lname, username);
  }



  @override
  void goToHome() {
    // var userProvider=Provider.of<UserProvider>(context,listen: false);
    // userProvider.user=user;
    Navigator.pushReplacementNamed(context,HomeScreen.routeName);
  }
}
