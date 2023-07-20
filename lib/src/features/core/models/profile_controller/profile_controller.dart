

import 'package:get/get.dart';
import 'package:login_app/src/repository/authentictaion_repository/authentication_repository.dart';
import 'package:login_app/src/repository/user_repository/user_repository.dart';

class ProfileController extends GetxController{
  static ProfileController get instance => Get.find();

  final _authRepo = Get.put(AuthenticationRepository());
  final _userRepo = Get.put(UserRepository());

  ///Step3: Get User Email and pass to UserRepository to fetch user record.
///Step2 is in user_repository.dart
///Step1 is in user_model.dart

    getUserData(){
      final email = _authRepo.firebaseUser.value?.email;
      if(email != null){
       return _userRepo.getUserDetails(email);
      }else {
        Get.snackbar('Error', 'Login to Continue');
      }
    }
}