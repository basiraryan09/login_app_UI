import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_app/src/constants/images.dart';
import 'package:login_app/src/constants/size.dar.dart';
import 'package:login_app/src/constants/text.dart';
import 'package:login_app/src/features/authentication/screens/forget_password/forget_password_otp/otp_screen.dart';

import '../../../../../common_widgets/form/form_header_widget.dart';
import '../../../../../constants/colors.dart';

class ForgetPasswordMailScreen extends StatelessWidget {
  const ForgetPasswordMailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var brightness = mediaQuery.platformBrightness;
    final isDarkMode = brightness == Brightness.dark;

    return SafeArea(
      child: Scaffold(
        backgroundColor: isDarkMode ? appSecondaryColor : appPrimaryColor,
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(appDefaultSize),
            child:Column(
              children: [
                const SizedBox(
                  height: appDefaultSize *4,),
                const FormHeaderWidget(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  heightBetween: 30,
                  textAlign: TextAlign.center,
                  image: appLogo,
                  title: appForgetPassword,
                  subTitle: appForgetPasswordSubTitle,),
                const SizedBox(height: appFormHeight,),
                Form(child: Column(
                  children: [
                    TextFormField(
                      style: const TextStyle(fontSize: 16.0),
                      decoration: const InputDecoration(
                        alignLabelWithHint: true,
                        border: OutlineInputBorder(),
                        contentPadding: EdgeInsets.symmetric(
                          vertical: 14.0,
                        ),
                        label: Text(appEmail,  style: TextStyle(fontSize: 18)),
                        prefixIcon: Icon(Icons.mail_outline_rounded),
                      ),
                    ),
                    const SizedBox(height: 20,),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(onPressed: (){
                        Get.to(const OtpScreen());
                      }, child: const Text(
                        appNext,
                      )),
                    )
                  ],
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
