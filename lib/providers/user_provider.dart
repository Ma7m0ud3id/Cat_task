
import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';
class UserProvider extends ChangeNotifier{
   String mail='';
   String pasword='';

  UserChange(String email,String password,String fName,String lName,String username)async{
      final prefs = await SharedPreferences.getInstance();
      mail=email;
      pasword=password;
      await prefs.setString('email', email);
      await prefs.setString('password', password);
      await prefs.setString('username', username);
      await prefs.setString('fName', fName);
      await prefs.setString('lName', lName);
      notifyListeners();
  }




}