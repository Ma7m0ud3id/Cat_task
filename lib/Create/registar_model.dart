
import 'package:shared_preferences/shared_preferences.dart';

import '../base.dart';
import 'States.dart';

class RegistarViweModel extends BaseViewModel<States>{


  void CreateAccount(String email,String password,String fName,String lName,String username)async{
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('email', email);
    await prefs.setString('password', password);
    await prefs.setString('username', username);
    await prefs.setString('fName', fName);
    await prefs.setString('lName', lName);

  }
  // null
  // FirebaseAuth firebaseAuth=FirebaseAuth.instance;
  // void CreateAccount(String email,String password,String fName,String lName,String username) async{
  //   String? message=null;
  //   try {
  //     Navigatore?.showloding();
  //     var result=await firebaseAuth
  //         .createUserWithEmailAndPassword(email: email, password: password);
  //
  //     var user=MyUser(id: result.user?.uid??"", fName: fName,
  //         lName: lName, username: username, email: email);
  //     var userData= await DateBaseUtils.createDBUser(user);
  //       Navigatore?.hideloding();
  //       Navigatore?.goToHome(user);
  //
  //
  //
  //
  //   } on FirebaseAuthException catch (e) {
  //     if (e.code == Conestant.WEAKPASSWORD) {
  //       message='The password provided is too weak.';
  //     } else if (e.code == Conestant.UESEDEMAIL) {
  //       message='The account already exists for that email.';
  //     }
  //
  //     Navigatore?.hideloding();
  //     if(message!=null){
  //       Navigatore?.showmassage(message);
  //     }
  //   } catch (e) {
  //     print(e);
  //   }
  // }
}