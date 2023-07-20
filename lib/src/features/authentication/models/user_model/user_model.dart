import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class UserModel {
  final String? id;
  final String fullName;
  final String email;
  final String phoneNo;
  final String password;

  const UserModel(
      {this.id,
      required this.phoneNo,
      required this.email,
      required this.password,
      required this.fullName});

  toJson() {
    return {
      "Full Name": fullName,
      "Email": email,
      "Phone": phoneNo,
      "Password": password
    };
  }

  ///Step2 is in user_repository.dart
  ///Step3 is in profile_controller.dart
  ///
  ///Step1: Map user fetched from firebase store to UserModel
  ///
  factory UserModel.fromSnapShot(DocumentSnapshot<Map<String , dynamic>> document) {
    final data = document.data()!;
    return UserModel(
      id: document.id,
      phoneNo: data['Phone'],
      email: data['Email'],
      password: data['Password'],
      fullName: data['Full Name'],
    );
  }
}
