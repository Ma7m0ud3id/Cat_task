
import 'package:shared_preferences/shared_preferences.dart';

import '../base.dart';
import 'States.dart';

class RegistarViweModel extends BaseViewModel<States>{


  void CreateAccount(String email,String password,String fName,String lName,String username)async{
    try {
      Navigatore?.showloding();
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString('email', email);
      await prefs.setString('password', password);
      await prefs.setString('username', username);
      await prefs.setString('fName', fName);
      await prefs.setString('lName', lName);

        Navigatore?.hideloding();
        Navigatore?.goToHome();




    }  catch (e) {
        print(e);
        Navigatore?.showmassage('Error');

    } catch (e) {
      print(e);
    }
  }
}