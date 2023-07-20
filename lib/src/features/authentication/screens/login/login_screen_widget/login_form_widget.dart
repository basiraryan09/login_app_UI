import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../../constants/size.dar.dart';
import '../../../../../constants/text.dart';
import '../../../../core/screens/dashboard_screen/dashboard_screen.dart';
import '../../forget_password/forget_password_options/forget_password_btn_widget.dart';
import '../../forget_password/forget_password_options/forget_password_model_bottom_sheet.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: appFormHeight - 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              style: const TextStyle(fontSize: 16.0),
              decoration: const InputDecoration(
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 14.0,
                  ),
                  prefixIcon: Icon(Icons.person_outline_outlined),
                  label: Text(
                    'Email',
                    style: TextStyle(fontSize: 18),
                  ),
                  alignLabelWithHint: true,
                  border: OutlineInputBorder()),
            ),
            const SizedBox(height: appFormHeight - 20),
            TextFormField(
              obscureText: true,
              style: const TextStyle(fontSize: 16.0),
              decoration: const InputDecoration(
                alignLabelWithHint: true,
                contentPadding: EdgeInsets.symmetric(
                  vertical: 14.0,
                ),
                prefixIcon: Icon(Icons.fingerprint_outlined),
                label: Text(
                  'Password',
                  style: TextStyle(fontSize: 18),
                ),
                border: OutlineInputBorder(),
                suffixIcon: Icon(Icons.remove_red_eye_sharp),
              ),
            ),
            const SizedBox(
              height: appFormHeight - 10,
            ),
            TextButton(
              onPressed: () {
                ForgetPasswordScreen.buildShowModalBottomSheet(context);
              },
              child: const Align(
                alignment: Alignment.centerRight,
                child: Text(appForgetPassword),
              ),
            ),
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(DashBoardScreen());
                  },
                  child: Text(appLogin.toUpperCase()),
                ))
          ],
        ),
      ),
    );
  }


}


