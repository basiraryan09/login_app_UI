import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_app/src/features/authentication/controllers/signup_controller/signup_controller.dart';
import 'package:login_app/src/features/authentication/models/user_model/user_model.dart';
import 'package:login_app/src/features/authentication/screens/forget_password/forget_password_otp/otp_screen.dart';

import '../../../../../constants/size.dar.dart';
import '../../../../../constants/text.dart';

class SignUpFormWidget extends StatelessWidget {
  const SignUpFormWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignUpController());
    final _formKey = GlobalKey<FormState>();


    return Container(
      padding: const EdgeInsets.symmetric(vertical: appFormHeight - 10),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              controller: controller.fullName,
              style: const TextStyle(fontSize: 16.0),
              decoration: const InputDecoration(
                  alignLabelWithHint: true,
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 14.0,
                  ),
                  label: Text(
                    appFullName,
                    style: TextStyle(fontSize: 18),
                  ),
                  prefixIcon: Icon(Icons.person_outline_outlined)),
            ),
            const SizedBox(
              height: appFormHeight - 20,
            ),
            TextFormField(
              controller: controller.email,
              style: const TextStyle(fontSize: 16.0),
              decoration: const InputDecoration(
                  alignLabelWithHint: true,
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 14.0,
                  ),
                  label: Text(
                    appEmail,
                    style: TextStyle(fontSize: 18),
                  ),
                  prefixIcon: Icon(Icons.email_outlined)),
            ),
            const SizedBox(
              height: appFormHeight - 20,
            ),
            TextFormField(
              controller: controller.phoneNo,
              style: const TextStyle(fontSize: 16.0),
              decoration: const InputDecoration(
                  alignLabelWithHint: true,
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 14.0,
                  ),
                  label: Text(
                    appPhoneNo,
                    style: TextStyle(fontSize: 18),
                  ),
                  prefixIcon: Icon(Icons.numbers)),
            ),
            const SizedBox(
              height: appFormHeight - 20,
            ),
            TextFormField(
              controller: controller.password,
              style: const TextStyle(fontSize: 16.0),
              decoration: const InputDecoration(
                  alignLabelWithHint: true,
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 14.0,
                  ),
                  label: Text(
                    appPassword,
                    style: TextStyle(fontSize: 18),
                  ),
                  prefixIcon: Icon(Icons.fingerprint_outlined)),
            ),
            const SizedBox(
              height: appFormHeight - 10,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  if(_formKey.currentState!.validate()){

                    //Email Authentication
                    //SignUpController.instance.registerUser(controller.email.text.trim(), controller.password.text.trim());

                    // Phone OTP Authentication
                   // SignUpController.instance.phoneAuthentication(controller.phoneNo.text.trim());

                    //User Model
                    final user = UserModel(
                        phoneNo: controller.phoneNo.text.trim(),
                        email: controller.email.text.trim(),
                        password: controller.password.text.trim(),
                        fullName: controller.fullName.text.trim());
                    SignUpController.instance.createUser(user);
                  }
                },
                child: Text(
                  appSignup.toUpperCase(),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
