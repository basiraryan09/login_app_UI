


import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_app/src/features/authentication/models/user_model/user_model.dart';

class UserRepository extends GetxController{
  static UserRepository get instance => Get.find();

  final _db = FirebaseFirestore.instance;


  ///Store User in FireStore
  createUser(UserModel user) async {
    await _db.collection("Users").add(user.toJson())
    //When Completed
         .whenComplete(() =>
        Get.snackbar('Success', 'Your account has been created.',
        snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.green.withOpacity(0.1),
          colorText: Colors.green
        ))
    //When Got Some Error
        .catchError((error, stackTrace){
      Get.snackbar('Error', 'Something went Wrong. Try again',
      snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.redAccent.withOpacity(0.1),
      colorText: Colors.red);
        print(error.toString());

    });
  }

  ///Step1 is in user_model
  ///Step3 is in profile_controller.dart
  ///
  ///Step2: Fetch all Users or user details

  ///This one is just for Getting Email
  Future<UserModel> getUserDetails(String email)async{
    final snapshot = await _db.collection('Users').where('Email', isEqualTo: email).get();
    final userData = snapshot.docs.map((e) => UserModel.fromSnapShot(e)).single;
    return userData;
  }
  ///Getting User all data
  Future<List<UserModel>> allUserDetails()async{
    final snapshot = await _db.collection('Users').get();
    final userData = snapshot.docs.map((e) => UserModel.fromSnapShot(e)).toList();
    return userData;
  }
}