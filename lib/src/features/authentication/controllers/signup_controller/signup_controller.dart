import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_app/src/features/authentication/models/user_model/user_model.dart';
import 'package:login_app/src/repository/authentictaion_repository/authentication_repository.dart';
import 'package:login_app/src/repository/user_repository/user_repository.dart';

import '../../screens/forget_password/forget_password_otp/otp_screen.dart';

class SignUpController extends GetxController{

  static SignUpController get instance => Get.find();

  //TextField Controllers to get data from TextFields
    final email = TextEditingController();
    final password = TextEditingController();
    final fullName = TextEditingController();
    final phoneNo = TextEditingController();

    final userRepo = Get.put(UserRepository());

    //Call this function from Design & it will do the rest
    void registerUser(String email, String password){
      AuthenticationRepository.instance.createUserWithEmailAndPassword(email, password);
    }

    Future<void> createUser(UserModel user) async {
     await userRepo.createUser(user);
      phoneAuthentication(user.phoneNo);
     Get.to(() =>const OtpScreen());
    }
    void phoneAuthentication(String phoneNo){
      AuthenticationRepository.instance.phoneAuthentication(phoneNo);
    }
}