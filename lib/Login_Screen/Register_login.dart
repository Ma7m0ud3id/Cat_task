
import 'package:shared_preferences/shared_preferences.dart';

import '../../base.dart';

import '../Create/States.dart';
import 'Navigat_login.dart';

class RegisterLogin extends BaseViewModel<NavigatLogin>{

  // void login(String email,String password,String realemail,String realpassword)async{
  //
  //   try {
  //     Navigatore?.showloding();
  //     if(realemail==email&&realpassword==password){
  //       print('**********$realemail');
  //       print('**********$realpassword');
  //       print('**********$email');
  //       print('**********$password');
  //       Navigatore?.hideloding();
  //        Navigatore?.goToHome(true);
  //     }
  //
  //   }catch (e) {
  //         print(e);
  //   }
  // }
  //var firebaseAuth=FirebaseAuth.instance;

    void login(String email,String password,String realemail,String realpassword)async{
    try {
      Navigatore?.showloding();


      if(realemail==email&&realpassword==password){
        Navigatore?.hideloding();
        Navigatore?.goToHome();

      }else{

        Navigatore?.showmassage('Failed to complete sign in , please try again later..');

      }
    } catch (e) {
      print(e);
    }
   }
}